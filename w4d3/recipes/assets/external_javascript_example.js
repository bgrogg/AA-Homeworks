Skip to content
This repository
Search
Pull requests
Issues
Marketplace
Gist
 @bgrogg
 Sign out
 Watch 36
  Star 159
 Fork 504 appacademy/curriculum Private
 Code  Issues 12  Pull requests 4  Projects 0  Wiki Insights
Branch: master Find file Copy pathcurriculum/html-css/assets/external_javascript_example.js
6c251ba  on Jun 8, 2016
@loschorts loschorts readme updates
1 contributor
RawBlameHistory
74 lines (61 sloc)  2.22 KB
window.onload = function() {
  (function reviewFormListener() {
    form = document.getElementById("review-form");
    form.addEventListener("submit", placeReview);
  })();
};

var placeReview = function(event) {
  event.preventDefault();
  var reviewElement = createReview(event);
  var reviewSection = document.getElementById('reviews');
  reviewSection.insertBefore(reviewElement, reviewSection.childNodes[2]);
};

var createReview = function(event) {
  var name = document.createTextNode(getName(event));
  var rating = document.createTextNode(getRating(event));
  var expertise = document.createTextNode(getExpertise(event));
  var review = document.createTextNode(getReview(event));

  var nameHeader = document.createElement('h4');
  var ratingParagraph = document.createElement('p');
  var expertiseParagraph = document.createElement('p');
  var reviewParagraph = document.createElement('p');

  nameHeader.appendChild(name);
  ratingParagraph.appendChild(rating);
  expertiseParagraph.appendChild(expertise);
  reviewParagraph.appendChild(review);

  var reviewElements = [nameHeader, ratingParagraph, expertiseParagraph, reviewParagraph];
  var reviewElement = document.createElement('div');
  reviewElements.forEach(function(el) {
    reviewElement.appendChild(el);
  });
  reviewElement.id = name.textContent + '_review';
  reviewElement.className = 'user_review';

  return reviewElement;
};

var getName = function(event) {
  return event.target.children.name.value;
};

var getRating = function(event) {
  var ratingScore;
  var formChildren = event.target.children;
  for (var i = 0; i < formChildren.length; i++) {
    if (formChildren[i].type === "radio" && formChildren[i].checked) {
      ratingScore = formChildren[i].value;
    }
  }

  return 'Rating: ' + ratingScore;
};

var getExpertise = function(event) {
  var dropdown = event.target.children.expertise;
  return 'Expertise: ' + dropdown.options[dropdown.selectedIndex].text;
};

var getReview = function(event) {
  var reviewText;
  var formChildren = event.target.children;
  for (var i = 0; i < formChildren.length; i++) {
    if (formChildren[i].tagName === "LABEL" && formChildren[i].children[0]) {
      reviewText = formChildren[i].children[0].value;
    }
  }

  return reviewText;
};
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help
