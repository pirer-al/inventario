package mx.uv.pamf.inventario.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import mx.uv.pamf.inventario.models.Producto;

public interface ProductoRepository extends JpaRepository<Producto, Long>{
        
}
