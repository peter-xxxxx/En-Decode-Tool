//
//  EnDecodeMethods.swift
//  En-Decode Tool
//
//  Created by Peter XU on 3/23/19.
//  Copyright © 2019 Peter XU. All rights reserved.
//

import Foundation

let codingDict: [Character] = [
    "消", "肉", "闻", "业", "土", "忍", "须", "辱", "末", "今", "狂", "譬", "严", "伏", "通", "如", "发", "心", "提", "怖", "等", "应", "复", "前", "数", "受", "亿", "分", "上", "燃", "劫", "则", "承", "他", "暗", "要", "降", "达", "持", "而", "来", "罗", "语", "庄", "善", "散", "值", "中", "为", "其", "益", "与", "诳", "寿", "实", "行", "真", "号", "日", "恶", "节", "边", "切", "种", "往", "我", "阿", "德", "量", "喻", "于", "千", "修", "云", "念", "围", "也", "汝", "释", "万", "惊", "甚", "智", "后", "灭", "算", "截", "疑", "就", "乃", "大", "香", "布", "子", "恨", "说", "王", "况", "者", "祇", "授", "供", "人", "世", "入", "何", "萨", "诸", "担", "菩", "尔", "天", "八", "尼", "歌", "身", "味", "希", "长", "听", "得", "嗔", "非", "那", "意", "法", "养", "沙", "道", "当", "此", "胜", "声", "乱", "畏", "不", "之", "割", "支", "信", "灯", "迦", "罪", "度", "明", "亦", "可", "藐", "乐", "悉", "空", "广", "耨", "诵", "所", "牟", "处", "时", "去", "佛", "第", "恭", "称", "乘", "一", "言", "事", "间", "无", "敬", "体", "是", "功", "次", "具", "又", "解", "书", "荷", "写", "波", "经", "蜜", "皆", "初", "华", "报", "贱", "仙", "著", "成", "已", "照", "读", "及", "白", "最", "绕", "眼", "福", "堕", "狐", "由", "五", "众", "虚", "以", "名", "男", "小", "四", "利", "多", "女", "塔", "恒", "记", "在", "施", "轻", "僧", "异", "见", "思", "过", "尊", "议", "生", "知", "即", "果", "逆", "离", "能", "触", "彼", "住", "目", "作", "昔", "至", "色", "河", "义", "百", "有", "三", "光", "礼", "典", "故", "慧", "先", "告", "若", "相"
]

func MyEncode(_ inputString: String) -> String {
    var newarray = inputString.utf8CString
    print(newarray)
    var newlist: [Character] = []
    for i in 0..<newarray.count - 1 {
        let t = Int(newarray[i]) + 128
        newlist.append(codingDict[t])
    }
    return "佛曰: " + String(newlist)
}

func MyDecode(_ inputString: String) -> String {
    var newarray: [CChar] = []
    let index = inputString.index(inputString.startIndex, offsetBy: 4, limitedBy: inputString.endIndex)
    
    if index == nil || inputString[inputString.startIndex..<index!] != "佛曰: " {
        return "error"
    }
    for c in inputString[index!...] {
        let t = codingDict.firstIndex(of: c)
        if t != nil {
            newarray.append(CChar(t! - 128))
        } else {
            return "error"
        }
    }
    newarray.append(CChar(0))
    let s = newarray.withUnsafeBufferPointer { ptr -> String? in
        let s = String(validatingUTF8: ptr.baseAddress!)
        return s
    }
    return s ?? "error"
    
}
