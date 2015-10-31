'use strict'

angular.module 'rattrapagesRush04App'
  .controller 'MainCtrl', ( $scope, $rootScope ) ->

    $rootScope.tour = 1

    $scope.squares = [
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange", pionNoir: true },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" },
      { color: "orange", pionBlanc: true },
      { color: "orange" },
      { color: "orange" },
      { color: "orange" }
    ]


    for s in $scope.squares
      s.blackCase = false

    return
