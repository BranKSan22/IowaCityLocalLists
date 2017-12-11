$scope.upVote = function(upvotes, id) {
                $http.post('upvote.php', {"upvotes": upvotes}, {"id": id})
                .then(function (response) {
                    if (response.status == 200){
                        if (response.data.status == 'error') {
                            alert ('error: ' + response.data.message);
                        } else {
                            //successful
                            $window.location.href = "rankings.html";
                        }
                    } else {
                        alert('unexpected error');
                    }
                });
            };
            
        $scope.downVote = function(downvotes, id) {
            $http.post('downvote.php', {"downvotes":downvotes}, {"id":id})
            .then(function (response){
                if (response,status == 200){
                    if (response.data.status =='error') {
                        alert ('error: ' + response.data.message);
                    } else {
                        //successful
                        $window.location.href = "rankings.html";
                    }
                } else {
                    alert('unexpected error');
                }
            });
        };