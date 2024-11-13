const filterToggle = document.getElementById('filterToggle');
        const filterSidebar = document.getElementById('filterSidebar');
        
        filterToggle.addEventListener('click', () => {
            filterSidebar.classList.toggle('show');
        });