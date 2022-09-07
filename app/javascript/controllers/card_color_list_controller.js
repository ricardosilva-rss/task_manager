const cardList = document.querySelectorAll(".card-list-info");
const linkList = document.querySelectorAll(".card-list-links");

linkList.forEach((link) => {
  console.dir(link);
})

cardList.forEach((card) => {
  const element = card.querySelector("#card-color-list");
  const colorValue = element.innerHTML;

  if (colorValue === "orange") {
    card.classList.remove("red-card");
    card.classList.remove("gray-card");
    card.classList.remove("black-card");
    card.classList.add("orange-card");
  } else if (colorValue === "red") {
    card.classList.remove("orange-card");
    card.classList.remove("gray-card");
    card.classList.remove("black-card");
    card.classList.add("red-card");
  } else if (colorValue === "gray") {
    card.classList.remove("orange-card");
    card.classList.remove("red-card");
    card.classList.remove("black-card");
    card.classList.add("gray-card");
  } else if (colorValue === "black") {
    card.classList.remove("orange-card");
    card.classList.remove("red-card");
    card.classList.remove("gray-card");
    card.classList.add("black-card");
  }
})
