package br.com.msystem.vo;
// Generated 12/03/2013 13:33:49 by Hibernate Tools 3.4.0.CR1


import java.math.BigDecimal;
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
 * ContasPagarAuto generated by hbm2java
 */
@Entity
@Table(name="contas_pagar_auto"
    ,catalog="handy"
)
public class ContasPagarAuto  implements java.io.Serializable {


     private int contaPagarAutoSq;
     private Clientes clientes;
     private BigDecimal valor;
     private Date dataInicial;
     private int parcelas;
     private byte[] observacao;

    public ContasPagarAuto() {
    }

	
    public ContasPagarAuto(Clientes clientes, BigDecimal valor, Date dataInicial, int parcelas) {
        this.clientes = clientes;
        this.valor = valor;
        this.dataInicial = dataInicial;
        this.parcelas = parcelas;
    }
    public ContasPagarAuto(Clientes clientes, BigDecimal valor, Date dataInicial, int parcelas, byte[] observacao) {
       this.clientes = clientes;
       this.valor = valor;
       this.dataInicial = dataInicial;
       this.parcelas = parcelas;
       this.observacao = observacao;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="conta_pagar_auto_sq", unique=true, nullable=false)
    public int getContaPagarAutoSq() {
        return this.contaPagarAutoSq;
    }
    
    public void setContaPagarAutoSq(int contaPagarAutoSq) {
        this.contaPagarAutoSq = contaPagarAutoSq;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fornecedor_sq", nullable=false)
    public Clientes getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Clientes clientes) {
        this.clientes = clientes;
    }

    
    @Column(name="valor", nullable=false, precision=9)
    public BigDecimal getValor() {
        return this.valor;
    }
    
    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="data_inicial", nullable=false, length=19)
    public Date getDataInicial() {
        return this.dataInicial;
    }
    
    public void setDataInicial(Date dataInicial) {
        this.dataInicial = dataInicial;
    }

    
    @Column(name="parcelas", nullable=false)
    public int getParcelas() {
        return this.parcelas;
    }
    
    public void setParcelas(int parcelas) {
        this.parcelas = parcelas;
    }

    
    @Column(name="observacao")
    public byte[] getObservacao() {
        return this.observacao;
    }
    
    public void setObservacao(byte[] observacao) {
        this.observacao = observacao;
    }




}

