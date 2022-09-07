const cardTask = document.querySelectorAll(".card-task");

cardTask.forEach((card) => {
  const element = card.querySelector("#card-color");
  const colorValue = element.innerHTML;

  if (colorValue === "yellow") {
    card.classList.remove("blue-card");
    card.classList.remove("green-card");
    card.classList.remove("pink-card");
    card.classList.add("yellow-card");
  } else if (colorValue === "blue") {
    card.classList.remove("yellow-card");
    card.classList.remove("green-card");
    card.classList.remove("pink-card");
    card.classList.add("blue-card");
  } else if (colorValue === "green") {
    card.classList.remove("yellow-card");
    card.classList.remove("blue-card");
    card.classList.remove("pink-card");
    card.classList.add("green-card");
  } else if (colorValue === "pink") {
    card.classList.remove("yellow-card");
    card.classList.remove("blue-card");
    card.classList.remove("green-card");
    card.classList.add("pink-card");
  }
})
