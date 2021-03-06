package br.com.msystem.vo;
// Generated 12/03/2013 13:33:49 by Hibernate Tools 3.4.0.CR1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * HistoricoAcesso generated by hbm2java
 */
@Entity
@Table(name="historico_acesso"
    ,catalog="handy"
)
public class HistoricoAcesso  implements java.io.Serializable {


     private int historicoAcessoSq;
     private Usuarios usuarios;
     private Empresas empresas;
     private Date dataAcesso;
     private String nomePrograma;

    public HistoricoAcesso() {
    }

	
    public HistoricoAcesso(Usuarios usuarios, Empresas empresas, Date dataAcesso) {
        this.usuarios = usuarios;
        this.empresas = empresas;
        this.dataAcesso = dataAcesso;
    }
    public HistoricoAcesso(Usuarios usuarios, Empresas empresas, Date dataAcesso, String nomePrograma) {
       this.usuarios = usuarios;
       this.empresas = empresas;
       this.dataAcesso = dataAcesso;
       this.nomePrograma = nomePrograma;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="historico_acesso_sq", unique=true, nullable=false)
    public int getHistoricoAcessoSq() {
        return this.historicoAcessoSq;
    }
    
    public void setHistoricoAcessoSq(int historicoAcessoSq) {
        this.historicoAcessoSq = historicoAcessoSq;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="usuario_sq", nullable=false)
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="empresa_sq", nullable=false)
    public Empresas getEmpresas() {
        return this.empresas;
    }
    
    public void setEmpresas(Empresas empresas) {
        this.empresas = empresas;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="data_acesso", nullable=false, length=19)
    public Date getDataAcesso() {
        return this.dataAcesso;
    }
    
    public void setDataAcesso(Date dataAcesso) {
        this.dataAcesso = dataAcesso;
    }

    
    @Column(name="nome_programa", length=250)
    public String getNomePrograma() {
        return this.nomePrograma;
    }
    
    public void setNomePrograma(String nomePrograma) {
        this.nomePrograma = nomePrograma;
    }




}


