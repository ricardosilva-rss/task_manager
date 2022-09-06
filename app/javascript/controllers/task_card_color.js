const cardTask = document.querySelectorAll(".card-task")

cardTask.forEach((task) => {
  const a = task.children("div.task-info");
  // const b = a[1];
  // const colorValue = color.innerHTML;
  console.log(a);
});

// if (colorValue === "#A5E5EB") {
//   cardTask.classList.add("blue-card");
// } else if (colorValue === "#C8F047") {
//   cardTask.classList.add("green-card");
// } else if (colorValue === "#EABAC8") {
//   cardTask.classList.add("pink-card");
// }

// console.log(cardTask);
