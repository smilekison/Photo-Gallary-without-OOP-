
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback" async defer></script>

<!-- Jquery  -->
<script src="assets/js/jquery.min.js"></script>

<!-- Boostrap javascript -->
<script src="assets/js/toggler.js"></script>
<script src='assets/js/bootstrapvalidator.min.js'></script>
<script src="assets/js/validation.js"></script>
<script>
var onloadCallback = function() {
    grecaptcha.execute();
};

function setResponse(response) { 
    document.getElementById('captcha-response').value = response; 
}
</script>
</body>
</html>