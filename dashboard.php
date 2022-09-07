<?php
    session_start();
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }

?>
    <!doctype html>
    <html lang="en">

    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
      <title>Welcome</title>
    </head>

    <body>
      <!-- === NAVBAR === -->
      
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="../webku/dashboard.php">Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
              aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link scrollto" href="home/home.php">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link scrollto" href="keunggulan/index.php">Keunggulan</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link scrollto" href="price/index.php">Harga</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link scrollto" href="portofolio/portofolio.php" >Portofolio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link scrollto" href="kontak/kontak.php">Kontak</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link scrollto" href="logout.php" onClick="return confirm('Apakah Anda Ingin Keluar?')">Logout</a>
                </li>
              </ul>
              <i class="bi bi-list mobile-nav-toggle"></i>
            </div>
          </nav>
       

      <div class="card text-center">
        <div class="card-header">
          WELCOME
        </div>
        <div class="card-body">
          <h5 class="card-title">Selamat Datang di Dashboard Website Jogja Media Web</h5>
          <p class="card-text">Disini bisa mengedit konten pada Website Anda </p>
          <a href="home/home.php" class="btn btn-primary">Mulai Edit</a>
        </div>
        <div class="card-footer text-muted">
          Admin Dashboard
        </div>
      </div>




    </body>

    </html>