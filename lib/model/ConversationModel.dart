class ConversationModel{
  String message,sendBy,time;

  ConversationModel({this.message, this.sendBy, this.time});

}
List<ConversationModel> dummyConversationData = [
  new ConversationModel(message: 'Hi' ,sendBy:'Muzammil' ,time:'1608929200206' ),
  new ConversationModel(message: 'Hi' ,sendBy:'Jawad' ,time:'1608929200207' ),
  new ConversationModel(message: 'How are you' ,sendBy:'Muzammil' ,time:'1608929200208' ),
  new ConversationModel(message: 'I am good' ,sendBy:'Jawad' ,time:'1608929200209' ),
  new ConversationModel(message: 'What about you' ,sendBy:'Muzammil' ,time:'1608929200210' ),
  new ConversationModel(message: 'I am also fine' ,sendBy:'Jawad' ,time:'1608929200211' ),
  new ConversationModel(message: 'How your development going?' ,sendBy:'Muzammil' ,time:'1608929200212' ),
  new ConversationModel(message: 'Its going pretty amazing' ,sendBy:'Jawad' ,time:'1608929200213' ),
  new ConversationModel(message: 'and what about your flutter development?' ,sendBy:'Muzammil' ,time:'1608929200214' ),
  new ConversationModel(message: 'Its awesome i made a Whatsapp clone' ,sendBy:'Jawad' ,time:'1608929200215' ),
];
