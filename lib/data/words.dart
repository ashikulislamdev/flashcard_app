import 'package:flashcard_app/models/word_model.dart';

final List<WordModel> words = [
// Pronouns
//Much like in Japanese and Korean, Chinese is considered a “pro-drop” language, which means it frequently omits pronouns. Still, you should learn them! This is because they’re important to use for emphasis and to make things clear.
  WordModel(topic: 'Pronouns', english: 'I, me', character: '我', pinyin: 'wǒ'),
  WordModel(topic: 'Pronouns', english: 'you', character: '你', pinyin: 'nǐ'),
  WordModel(
      topic: 'Pronouns',
      english: 'you (formal)',
      character: '您',
      pinyin: 'nín'),
  WordModel(
      topic: 'Pronouns', english: 'he, him', character: '他', pinyin: 'tā'),
  WordModel(
      topic: 'Pronouns', english: 'she, her', character: '她', pinyin: 'tā'),
  WordModel(
      topic: 'Pronouns', english: 'we, us', character: '我们', pinyin: 'wǒmen'),
  WordModel(
      topic: 'Pronouns',
      english: '你们',
      character: 'you (formal)',
      pinyin: 'nǐmen'),
  WordModel(
      topic: 'Pronouns',
      english: 'they, them',
      character: '他们',
      pinyin: 'tāmen'),
  WordModel(topic: 'Pronouns', english: 'it', character: '它', pinyin: 'tā'),
  WordModel(topic: 'Pronouns', english: 'this', character: '这', pinyin: 'zhè'),
  WordModel(topic: 'Pronouns', english: 'that', character: '那', pinyin: 'nà'),
  WordModel(
      topic: 'Pronouns', english: 'these', character: '这些', pinyin: 'zhèxiē'),
  WordModel(
      topic: 'Pronouns', english: 'those', character: '那些', pinyin: 'nàxiē'),
  WordModel(
      topic: 'Pronouns',
      english: 'oneself, alone',
      character: '自己',
      pinyin: 'zìjǐ'),
  WordModel(
      topic: 'Pronouns', english: 'everyone', character: '大家', pinyin: 'dàjiā'),

//Titles
//To be more polite, you don’t use “you” in Chinese. Instead, you use the person’s last name and title in very formal situations, and their first name and title in slightly less formal situations. There are loads of different titles in Chinese, but here are some of the most common.
  WordModel(
      topic: 'Titles',
      english: 'mr., sir',
      character: '先生',
      pinyin: 'xiānshēng'),
  WordModel(
      topic: 'Titles', english: 'miss', character: '小姐', pinyin: 'xiǎojiě'),
//  () – “”, note that this is used outside of business situations only
  WordModel(
      topic: 'Titles', english: 'madame', character: '太太', pinyin: 'tàitai'),
  WordModel(
      topic: 'Titles', english: 'teacher', character: '老師', pinyin: 'lǎoshī'),
// 醫生 () – “”
  WordModel(
      topic: 'Titles', english: 'doctor', character: '医生', pinyin: 'yīshēng'),

//Question Words
//Essential Chinese Question Words
  WordModel(
      topic: 'Question', english: 'what', character: '什么', pinyin: 'shénme'),

  WordModel(
      topic: 'Question', english: 'how many', character: '几', pinyin: 'jǐ'),
  WordModel(topic: 'Question', english: 'who', character: '谁', pinyin: 'shéi'),

  WordModel(
      topic: 'Question',
      english: 'when',
      character: '什么时候',
      pinyin: 'shénme shíhòu'),

  WordModel(
      topic: 'Question', english: 'where', character: '哪里', pinyin: 'nǎlǐ'),

  WordModel(
      topic: 'Question', english: 'why', character: '为什么', pinyin: 'wèishéme'),

  WordModel(
      topic: 'Question', english: 'how', character: '怎么', pinyin: 'zěnme'),

  WordModel(
      topic: 'Question',
      english: 'how about',
      character: '怎么样',
      pinyin: 'zěnme yàng'),

  //Important Words
  //Here is a selection of general words that are important to know in Chinese. It’s a mixed collection of words, but they’re all high-frequency Chinese words and incredibly useful to know.
  WordModel(topic: 'Important', english: 'not', character: '不', pinyin: 'bù'),
  WordModel(
      topic: 'Important',
      english: '了',
      character: 'a marker used to denote change',
      pinyin: 'le'),
  WordModel(topic: 'Important', english: 'very', character: '很', pinyin: 'hěn'),
  WordModel(topic: 'Important', english: 'of', character: '的', pinyin: 'de'),
  WordModel(
      topic: 'Important',
      english: 'still, yet, also',
      character: '还',
      pinyin: 'hái'),
  WordModel(
      topic: 'Important',
      english: 'by, for the sake of',
      character: 'wéi',
      pinyin: '为'),
  WordModel(
      topic: 'Important', english: 'again', character: '又', pinyin: 'yòu'),
  WordModel(
      topic: 'Important',
      english: 'from, since',
      character: '从',
      pinyin: 'cóng'),
  WordModel(
      topic: 'Important',
      english: 'again, once more',
      character: '再',
      pinyin: 'zài'),
  WordModel(
      topic: 'Important',
      english: 'like this, that way',
      character: '这样',
      pinyin: 'zhèyàng'),
  WordModel(
      topic: 'Important', english: 'maybe', character: '可能', pinyin: 'kěnéng'),
  WordModel(
      topic: 'Important',
      english: 'correct, or that’s right',
      character: '对',
      pinyin: 'duì'),

//   Time
//Chinese Words for Time
  WordModel(topic: 'Time', english: 'day', character: '天', pinyin: 'tiān'),
  WordModel(topic: 'Time', english: 'week', character: '星期', pinyin: 'xīngqí'),
  WordModel(topic: 'Time', english: 'month', character: '月', pinyin: 'yuè'),
  WordModel(topic: 'Time', english: 'year', character: '年', pinyin: 'nián'),
  WordModel(
      topic: 'Time', english: 'today', character: '今天', pinyin: 'jīntiān'),
  WordModel(
      topic: 'Time', english: 'yesterday', character: '昨天', pinyin: 'zuótiān'),
  WordModel(
      topic: 'Time', english: 'tomorrow', character: '明天', pinyin: 'míngtiān'),
  WordModel(topic: 'Time', english: 'hour', character: '小时', pinyin: 'xiǎoshí'),
  WordModel(
      topic: 'Time', english: 'minute', character: '分钟', pinyin: 'fēnzhōng'),
  WordModel(topic: 'Time', english: 'time', character: '时间', pinyin: 'shíjiān'),
  WordModel(
      topic: 'Time', english: 'before', character: '以前', pinyin: 'yǐqián'),
  WordModel(topic: 'Time', english: 'after', character: '以后', pinyin: 'yǐhòu'),
  WordModel(topic: 'Time', english: 'now', character: '现在', pinyin: 'xiànzài'),
  WordModel(
      topic: 'Time', english: 'time, occasion', character: '次', pinyin: 'cì'),

// Place
//Chinese Words for Places
  WordModel(topic: 'Places', english: 'here', character: '这里', pinyin: 'zhèlǐ'),
  WordModel(topic: 'Places', english: 'there', character: '那里', pinyin: 'nàlǐ'),
  WordModel(
      topic: 'Places', english: 'place', character: '地方', pinyin: 'dìfāng'),
  WordModel(
      topic: 'Places', english: 'school', character: '学校', pinyin: 'xuéxiào'),
  WordModel(topic: 'Places', english: 'shop', character: '店', pinyin: 'diàn'),
  WordModel(
      topic: 'Places',
      english: 'work, to work',
      character: '工作',
      pinyin: 'gōngzuò'),
  WordModel(
      topic: 'Places',
      english: 'bathroom',
      character: '洗手间',
      pinyin: 'xǐshǒujiān'),
  WordModel(
      topic: 'Places', english: 'city', character: '城市', pinyin: 'chéngshì'),
  WordModel(
      topic: 'Places', english: 'country', character: '国家', pinyin: 'guójiā'),
  WordModel(
      topic: 'Places', english: 'China', character: '中国', pinyin: 'Zhōngguó'),
  WordModel(
      topic: 'Places', english: 'company', character: '公司', pinyin: 'gōngsī'),

//       Things
//Chinese Words for Things
  WordModel(
      topic: 'Things', english: 'thing', character: '东西', pinyin: 'dōngxī'),
  WordModel(
      topic: 'Things',
      english: 'Thing, matter, circumstance',
      character: '事',
      pinyin: 'shì'),
  WordModel(
      topic: 'Things', english: 'house, home', character: '家', pinyin: 'jiā'),
  WordModel(topic: 'Things', english: 'car', character: '车', pinyin: 'chē'),
  WordModel(
      topic: 'Things',
      english: 'question, problem',
      character: '问题',
      pinyin: 'wèntí'),

// People
//Chinese Words for People
  WordModel(
      topic: 'People', english: 'woman', character: '女人', pinyin: 'nǚrén'),
  WordModel(topic: 'People', english: 'man', character: '男人', pinyin: 'nánrén'),
  WordModel(
      topic: 'People', english: 'child', character: '孩子', pinyin: 'háizi'),
  WordModel(
      topic: 'People', english: 'friend', character: '朋友', pinyin: 'péngyǒu'),
  WordModel(topic: 'People', english: 'person', character: '人', pinyin: 'rén'),
  WordModel(
      topic: 'People', english: 'family', character: '家人', pinyin: 'jiārén'),
  WordModel(
      topic: 'People', english: 'name', character: '名字', pinyin: 'míngzì'),
  WordModel(
      topic: 'People', english: 'student', character: '学生', pinyin: 'xuéshēng'),

// Common Chinese Verbs
// These are the 20 most common Chinese verbs you should know. There’s a ton you can say with just these 20 verbs, especially with verbs like 要 (yào, “to want”) and 做 (zuò, “to do, to make”).
  WordModel(
      topic: 'Verbs',
      english: 'located, at, in',
      character: '在',
      pinyin: 'zài'),
  WordModel(topic: 'Verbs', english: 'to have', character: '有', pinyin: 'yǒu'),
  WordModel(
      topic: 'Verbs',
      english: 'to speak, to say',
      character: '说',
      pinyin: 'shuō'),
  WordModel(
      topic: 'Verbs', english: 'to want, need', character: '要', pinyin: 'yào'),
  WordModel(
      topic: 'Verbs', english: 'to know how to', character: 'huì', pinyin: '会'),
  WordModel(
      topic: 'Verbs',
      english: 'to reach, to catch up',
      character: '及',
      pinyin: 'jí'),
  WordModel(
      topic: 'Verbs', english: 'to be able to', character: '能', pinyin: 'néng'),
  WordModel(topic: 'Verbs', english: 'can', character: '可以', pinyin: 'kěyǐ'),
  WordModel(topic: 'Verbs', english: 'to come', character: '来', pinyin: 'lái'),

  WordModel(
      topic: 'Verbs',
      english: 'to wait,to allow',
      character: '等,让',
      pinyin: 'děng,ràng*'),
  WordModel(
      topic: 'Verbs', english: 'to do, to make', character: '做', pinyin: 'zuò'),
  WordModel(
      topic: 'Verbs',
      english: 'to want, to wish for, to miss',
      character: '想',
      pinyin: 'xiǎng'),
  WordModel(topic: 'Verbs', english: 'to go', character: '去', pinyin: 'qù'),
  WordModel(
      topic: 'Verbs',
      english: '表示',
      character: 'to demonstrate',
      pinyin: 'biǎoshì'),
  WordModel(
      topic: 'Verbs',
      english: 'to see, to look, to watch',
      character: '看',
      pinyin: 'kàn'),
  WordModel(
      topic: 'Verbs', english: 'to think', character: '觉得', pinyin: 'juéde'),
  WordModel(
      topic: 'Verbs', english: 'to use', character: '使用', pinyin: 'shǐyòng'),
  WordModel(
      topic: 'Verbs', english: 'to know', character: '知道', pinyin: 'zhīdào'),
  WordModel(
      topic: 'Verbs',
      english: 'to not have, there aren’t any, haven’t done',
      character: '没有',
      pinyin: 'méiyǒu'),

//       11 Simple Chinese Adjectives and Adverbs
// Adjectives and adverbs are useful words when speaking another language because they can really add something to your communication and how in-depth you go in your conversations. Here are 11 to get you started:
  WordModel(
      topic: 'Adj. & Adv.', english: 'all', character: '都', pinyin: 'dōu'),
  WordModel(topic: 'Adj. & Adv.', english: 'big', character: '大', pinyin: 'dà'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'most', character: '最', pinyin: 'zuì'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'good', character: '好', pinyin: 'hǎo'),
  WordModel(
      topic: 'Adj. & Adv.',
      english: 'even more',
      character: '更',
      pinyin: 'gèng'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'every', character: '每', pinyin: 'měi'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'only', character: '只', pinyin: 'zhǐ'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'small', character: '小', pinyin: 'xiǎo'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'new', character: '新', pinyin: 'xīn'),
  WordModel(
      topic: 'Adj. & Adv.',
      english: 'already',
      character: '已经',
      pinyin: 'yǐjīng'),
  WordModel(
      topic: 'Adj. & Adv.', english: 'tall', character: '高', pinyin: 'gāo'),

// Prepositions
// Prepositions are common in Chinese because they are used in a wide range of contexts. You’ll see them when talking about time, when talking about location, and in other situations.
  WordModel(
      topic: 'Preposition',
      english: 'on, above',
      character: '上',
      pinyin: 'shàng'),
  WordModel(
      topic: 'Preposition', english: 'center', character: '中', pinyin: 'zhōng'),
  WordModel(
      topic: 'Preposition', english: 'inside', character: '里', pinyin: 'lǐ'),
  WordModel(
      topic: 'Preposition',
      english: 'under, below',
      character: '下',
      pinyin: 'xià'),

// Connectors
// Conversation connectors are some of the best words and phrases you can pick up in another language to quickly sound more fluent. These 8 will give you a headstart in Chinese:
  WordModel(topic: 'Connectors', english: 'and', character: '和', pinyin: 'hé'),
  WordModel(
      topic: 'Connectors', english: 'then', character: '就', pinyin: 'jiù'),
  WordModel(
      topic: 'Connectors',
      english: 'but, however',
      character: '但(是)',
      pinyin: 'dàn(shì'),
  WordModel(topic: 'Connectors', english: 'or', character: '或', pinyin: 'huò'),
  WordModel(
      topic: 'Connectors',
      english: 'because',
      character: '因为',
      pinyin: 'yīnwèi'),
  WordModel(
      topic: 'Connectors',
      english: 'so, therefore',
      character: '所以',
      pinyin: 'suǒyǐ'),
  WordModel(
      topic: 'Connectors', english: 'if', character: '如果', pinyin: 'rúguǒ'),
  WordModel(
      topic: 'Connectors', english: 'with', character: '跟', pinyin: 'gēn'),
];
