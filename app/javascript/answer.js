// 回答用フォームの出現
document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("answer-form-contents");
  form.style.display = "none";

  const toggleButton = document.getElementById("answer-btn");
  toggleButton.addEventListener("click", toggleForm);
});

const toggleForm = () => {
  const form = document.getElementById("answer-form-contents");
  form.style.display = (form.style.display === "none") ? "block" : "none";
};