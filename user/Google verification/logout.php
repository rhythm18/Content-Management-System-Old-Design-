<?php
session_start();
session_destroy();
echo "
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      
    });
    auth2.disconnect();
  }
   signOut();
</script>";
header('Location:https://betechnical.in/');
?>

