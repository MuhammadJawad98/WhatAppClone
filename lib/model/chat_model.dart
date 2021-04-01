class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final String timeZone;

  ChatModel(
      {this.name, this.message, this.time, this.avatarUrl, this.timeZone});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "John Catar",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1496869836330-cd25f013c377?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: "Harvey Spectre",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1514481422339-db621c1fca86?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1492632736198-174776a820f9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: "Rachel",
      message: "I'm good!",
      timeZone: 'pm',
      time: "10:30",
      avatarUrl:
          "https://images.unsplash.com/photo-1491743715344-d5eed2a9c5bd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1524666041070-9d87656c25bb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1541855492-581f618f69a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: " Spectre",
      message: "Hey I have hacked whatsapp!",
      time: "16:30",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1441786485319-5e0f0c092803?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: " Johny ",
      message: "Hey I have hacked whatsapp!",
      time: "17:45",
      timeZone: 'pm',
      avatarUrl:
          "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: " Spectre",
      message: "Hey I have hacked whatsapp!",
      timeZone: 'pm',
      time: "19:00",
      avatarUrl:
          "https://images.unsplash.com/photo-1579119986241-5e72d26cb690?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  new ChatModel(
      name: " Wilson",
      message: "Hey I have hacked whatsapp!",
      timeZone: 'pm',
      time: "14:00",
      avatarUrl:
          "https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
];
