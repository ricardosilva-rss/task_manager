const cardList = document.querySelectorAll(".card-list");

cardList.forEach(card => {
  const cardInfo = card.querySelector(".card-list-info");
  const element = card.querySelector("#card-color-list");
  const colorValue = element.innerHTML;

  const linksList = card.querySelector(".card-list-links");
  const links = linksList.getElementsByTagName("a");

  if (colorValue === "orange") {
    cardInfo.classList.remove("red-card");
    cardInfo.classList.remove("gray-card");
    cardInfo.classList.remove("black-card");
    cardInfo.classList.add("orange-card");
    for (const a of links) {
      a.classList.remove("red-card");
      a.classList.remove("gray-card");
      a.classList.remove("black-card");
      a.classList.add("orange-card");
    }
  } else if (colorValue === "red") {
    cardInfo.classList.remove("orange-card");
    cardInfo.classList.remove("gray-card");
    cardInfo.classList.remove("black-card");
    cardInfo.classList.add("red-card");
    for (const a of links) {
      a.classList.remove("orange-card");
      a.classList.remove("gray-card");
      a.classList.remove("black-card");
      a.classList.add("red-card");
    }
  } else if (colorValue === "gray") {
    cardInfo.classList.remove("orange-card");
    cardInfo.classList.remove("red-card");
    cardInfo.classList.remove("black-card");
    cardInfo.classList.add("gray-card");
    for (const a of links) {
      a.classList.remove("orange-card");
      a.classList.remove("red-card");
      a.classList.remove("black-card");
      a.classList.add("gray-card");
    }
  } else if (colorValue === "black") {
    cardInfo.classList.remove("orange-card");
    cardInfo.classList.remove("red-card");
    cardInfo.classList.remove("gray-card");
    cardInfo.classList.add("black-card");
    for (const a of links) {
      a.classList.remove("orange-card");
      a.classList.remove("red-card");
      a.classList.remove("gray-card");
      a.classList.add("black-card");
    }
  }
})
