<?php
// Obtener el año actual dinámicamente
$currentYear = date("Y");
?>
<footer class="bg-gray-900 text-white py-6 mt-10">
    <div class="container mx-auto text-center">
        <p class="text-sm">&copy; <?php echo $currentYear; ?> - Events</p>
        <nav class="mt-4">
            <a href="index.php" class="text-gray-400 hover:text-white mx-2">Inicio</a>
            <a href="about.php" class="text-gray-400 hover:text-white mx-2">Sobre Nosotros</a>
            <a href="contact.php" class="text-gray-400 hover:text-white mx-2">Contacto</a>
            <a href="privacy.php" class="text-gray-400 hover:text-white mx-2">Política de Privacidad</a>
        </nav>
    </div>
</footer>
