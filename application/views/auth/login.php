<br><br>
<div>
    <style>
        h1 {
            text-align: center;
            color: black;
        }

        roundcorner {
            border-radius: 20%;
        }
    </style>



    <!-- <h1 style="text-align: center"><b>Welcome to VQ System</b></h1><br> -->
</div>
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-lg-7">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <img src="assets\logo\vqlogo.png" alt="logo" style="width:100px;height:100px;">

                                    <style>
                                        img {
                                            border-radius: 20%;
                                        }
                                    </style><br><br>
                                    <br>
                                    <h1 class="h1 text-gray-900 mb-4">Let's queue virtually! &#128516;</h1>
                                    <p class="h6 text-gray-900 mb-4">To queue with us please sign in with your account</p>
                                </div><br>

                                <?= $this->session->flashdata('message'); ?>

                                <form class="user" method="post" action="<?= base_url('auth'); ?>">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Enter Email Address..." value="<?= set_value('email'); ?>">
                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </button>
                                </form>
                                <hr>
                                <div class="text-center">

                                </div>
                                <div class="text-center">
                                    <a class="small" href="<?= base_url('auth/registration'); ?>">New to VQ? Let's create an Account!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>