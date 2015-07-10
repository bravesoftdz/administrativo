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
 * ProdutosFaltantes generated by hbm2java
 */
@Entity
@Table(name="produtos_faltantes"
    ,catalog="handy"
)
public class ProdutosFaltantes  implements java.io.Serializable {


     private int produtoFaltanteSq;
     private NfEntradas nfEntradas;
     private Produtos produtos;
     private Clientes clientes;
     private int qtdeProdutoFaltante;
     private Date dataProdutoFaltante;

    public ProdutosFaltantes() {
    }

	
    public ProdutosFaltantes(Produtos produtos, int qtdeProdutoFaltante, Date dataProdutoFaltante) {
        this.produtos = produtos;
        this.qtdeProdutoFaltante = qtdeProdutoFaltante;
        this.dataProdutoFaltante = dataProdutoFaltante;
    }
    public ProdutosFaltantes(NfEntradas nfEntradas, Produtos produtos, Clientes clientes, int qtdeProdutoFaltante, Date dataProdutoFaltante) {
       this.nfEntradas = nfEntradas;
       this.produtos = produtos;
       this.clientes = clientes;
       this.qtdeProdutoFaltante = qtdeProdutoFaltante;
       this.dataProdutoFaltante = dataProdutoFaltante;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="produto_faltante_sq", unique=true, nullable=false)
    public int getProdutoFaltanteSq() {
        return this.produtoFaltanteSq;
    }
    
    public void setProdutoFaltanteSq(int produtoFaltanteSq) {
        this.produtoFaltanteSq = produtoFaltanteSq;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="nf_entrada_sq")
    public NfEntradas getNfEntradas() {
        return this.nfEntradas;
    }
    
    public void setNfEntradas(NfEntradas nfEntradas) {
        this.nfEntradas = nfEntradas;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="produto_sq", nullable=false)
    public Produtos getProdutos() {
        return this.produtos;
    }
    
    public void setProdutos(Produtos produtos) {
        this.produtos = produtos;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="cliente_sq")
    public Clientes getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Clientes clientes) {
        this.clientes = clientes;
    }

    
    @Column(name="qtde_produto_faltante", nullable=false)
    public int getQtdeProdutoFaltante() {
        return this.qtdeProdutoFaltante;
    }
    
    public void setQtdeProdutoFaltante(int qtdeProdutoFaltante) {
        this.qtdeProdutoFaltante = qtdeProdutoFaltante;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="data_produto_faltante", nullable=false, length=19)
    public Date getDataProdutoFaltante() {
        return this.dataProdutoFaltante;
    }
    
    public void setDataProdutoFaltante(Date dataProdutoFaltante) {
        this.dataProdutoFaltante = dataProdutoFaltante;
    }




}

