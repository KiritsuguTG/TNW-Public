import xml.etree.ElementTree as ET
from pathlib import Path

class ModifyXML:
    def __init__(self, path: Path):
        self.path = path
        self.outpath = Path.cwd() / 'output1.xml'
        self.namespace = {
            'asset': 'uri:ea.com:eala:asset'
        }

    def __remove_namespace(self, text: str):
        sp = text.split('}')
        return sp[-1]

    def __get_child(self, ele: ET.Element):
        res = {}
        for e in ele:
            tag = self.__remove_namespace(e.tag)
            res[tag] = e.attrib
            if e.text:
                text = e.text.strip()
                if len(text) > 0:
                    res[tag]['text'] = text
            if len(e) != 0:
                res_c = self.__get_child(e)
                for k in res_c.keys():
                    k:str
                    new_key = tag + self.__remove_namespace(k)
                    res[new_key] = res_c[k]
        return res
    
    def modified_xml(self):
        tree = ET.parse(self.path)
        root = tree.getroot()

        for WT in root.findall('asset:WeaponTemplate', self.namespace):
            childs = self.__get_child(WT)
            for child in childs.keys():
                for k in childs[child].keys():
                    new_key = child + self.__remove_namespace(k)
                    WT.set(new_key, childs[child][k])

            [WT.remove(c) for c in list(WT)]

        tree.write(self.outpath)
        print(f'文件被保存在{self.outpath}')

if __name__ == '__main__':
    path = Path(input('请拖入文件或输入文件路径:').removeprefix("& '").removesuffix("'"))
    if not path.exists():
        print('文件不存在')
    else:
        mxml = ModifyXML(path)
        mxml.modified_xml()