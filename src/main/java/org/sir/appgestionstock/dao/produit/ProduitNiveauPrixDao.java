package org.sir.appgestionstock.dao.produit;
import org.sir.appgestionstock.bean.core.produit.ProduitNiveauPrix;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.query.Param;

import java.util.List;
public interface ProduitNiveauPrixDao extends JpaRepository<ProduitNiveauPrix, Long> {
int deleteByIdIn(List<Long> ids);
int deleteByProduitId(Long id);

    @Query("SELECT pnp FROM ProduitNiveauPrix pnp WHERE pnp.produit.id = :id")
    List<ProduitNiveauPrix> findByProduitId(@Param("id") Long id);
int deleteByNiveauPrixId(Long id);
List<ProduitNiveauPrix> findByNiveauPrixId(Long id);
}
