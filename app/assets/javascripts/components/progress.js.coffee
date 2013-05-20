##
# Progress Module
#
progress = angular.module('progress', [])

progress.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]

progress.factory "addShareEvent", ["$http", ($http) ->
  return ($scope) ->
    if $scope.url?
      success = (data, status, headers, config) ->
        if data? and data.percent?
          $scope.percent = data.percent
      req = $http({method: "POST", url: $scope.url})
        .success(success)
]


##
# Apps
#
fundsProgress    = angular.module 'FundsProgress',    ['progress']
facebookProgress = angular.module 'FacebookProgress', ['progress']
twitterProgress  = angular.module 'TwitterProgress',  ['progress']


##
# Funds Progress Controller
#
fundsProgress.controller "FundsProgressController", ["$scope", "$element", ($scope, $element) ->

  $scope.percent = $element.data("percent")
]

##
# Facebook Progress Controller
#
facebookProgress.controller "FacebookProgressController", ["$scope", "$element", "addShareEvent", ($scope, $element, addShareEvent) ->

  $scope.url     = $element.data("url")
  $scope.percent = $element.data("percent")

  $scope.share = ($event, image) ->
    $event.preventDefault()
    obj =
      method:  "feed"
      link:    "http://www.CANC3R.org"
      picture: image
      name:    "CANC3R"
      caption: "Let's Beat Cancer Together!"
      description: "Cancer affects too many people that we care about. The expense of treatment is often too much for a single person to bear. However when we band together, we can help."

    callback = (response) ->
      if response? and response.post_id?
        # Create a Facebook share event
        addShareEvent($scope)
        # Send event to Google Analytics
        ga('send', 'event', 'Social', 'Share', 'Facebook') if ga?

    FB.ui(obj, callback);
]

##
# Twitter Progress Controller
#
twitterProgress.controller "TwitterProgressController", ["$scope", "$element", "addShareEvent", ($scope, $element, addShareEvent) ->

  # Load Twitter SDK
  $.getScript "http://platform.twitter.com/widgets.js", ->
    handleTweetEvent = (event) ->
      if event and event.type is "tweet"
        # Create a Twitter share event
        addShareEvent($scope)
        # Send event to Google Analytics
        ga('send', 'event', 'Social', 'Share', 'Twitter') if ga?

    twttr.events.bind('tweet', handleTweetEvent)

  $scope.url     = $element.data("url")
  $scope.percent = $element.data("percent")
]


##
# Init Apps
#
jQuery ($) ->

  # $("[data-share]").each ->

  angular.bootstrap "#funds-progress",    ["FundsProgress"]
  angular.bootstrap "#facebook-progress", ["FacebookProgress"]
  angular.bootstrap "#twitter-progress",  ["TwitterProgress"]
