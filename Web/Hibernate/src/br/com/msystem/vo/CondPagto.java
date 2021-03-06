package br.com.msystem.vo;
// Generated 12/03/2013 13:33:49 by Hibernate Tools 3.4.0.CR1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * CondPagto generated by hbm2java
 */
@Entity
@Table(name="cond_pagto"
    ,catalog="handy"
    , uniqueConstraints = @UniqueConstraint(columnNames="CODIGO_COND_PAGTO") 
)
public class CondPagto  implements java.io.Serializable {


     private int condPagtoSq;
     private int codigoCondPagto;
     private String descricaoCondPagto;
     private int parcelas;
     private Integer d00;
     private Integer d01;
     private Integer d02;
     private Integer d03;
     private Integer d04;
     private Integer d05;
     private Integer d06;
     private Integer d07;
     private Integer d08;
     private Integer d09;
     private Integer p00;
     private Integer p01;
     private Integer p02;
     private Integer p03;
     private Integer p04;
     private Integer p05;
     private Integer p06;
     private Integer p07;
     private Integer p08;
     private Integer p09;
     private Set<Pedidos> pedidoses = new HashSet<Pedidos>(0);
     private Set<Assistencias> assistenciases = new HashSet<Assistencias>(0);
     private Set<Nfiscais> nfiscaises = new HashSet<Nfiscais>(0);

    public CondPagto() {
    }

	
    public CondPagto(int codigoCondPagto, String descricaoCondPagto, int parcelas) {
        this.codigoCondPagto = codigoCondPagto;
        this.descricaoCondPagto = descricaoCondPagto;
        this.parcelas = parcelas;
    }
    public CondPagto(int codigoCondPagto, String descricaoCondPagto, int parcelas, Integer d00, Integer d01, Integer d02, Integer d03, Integer d04, Integer d05, Integer d06, Integer d07, Integer d08, Integer d09, Integer p00, Integer p01, Integer p02, Integer p03, Integer p04, Integer p05, Integer p06, Integer p07, Integer p08, Integer p09, Set<Pedidos> pedidoses, Set<Assistencias> assistenciases, Set<Nfiscais> nfiscaises) {
       this.codigoCondPagto = codigoCondPagto;
       this.descricaoCondPagto = descricaoCondPagto;
       this.parcelas = parcelas;
       this.d00 = d00;
       this.d01 = d01;
       this.d02 = d02;
       this.d03 = d03;
       this.d04 = d04;
       this.d05 = d05;
       this.d06 = d06;
       this.d07 = d07;
       this.d08 = d08;
       this.d09 = d09;
       this.p00 = p00;
       this.p01 = p01;
       this.p02 = p02;
       this.p03 = p03;
       this.p04 = p04;
       this.p05 = p05;
       this.p06 = p06;
       this.p07 = p07;
       this.p08 = p08;
       this.p09 = p09;
       this.pedidoses = pedidoses;
       this.assistenciases = assistenciases;
       this.nfiscaises = nfiscaises;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="COND_PAGTO_SQ", unique=true, nullable=false)
    public int getCondPagtoSq() {
        return this.condPagtoSq;
    }
    
    public void setCondPagtoSq(int condPagtoSq) {
        this.condPagtoSq = condPagtoSq;
    }

    
    @Column(name="CODIGO_COND_PAGTO", unique=true, nullable=false)
    public int getCodigoCondPagto() {
        return this.codigoCondPagto;
    }
    
    public void setCodigoCondPagto(int codigoCondPagto) {
        this.codigoCondPagto = codigoCondPagto;
    }

    
    @Column(name="DESCRICAO_COND_PAGTO", nullable=false, length=50)
    public String getDescricaoCondPagto() {
        return this.descricaoCondPagto;
    }
    
    public void setDescricaoCondPagto(String descricaoCondPagto) {
        this.descricaoCondPagto = descricaoCondPagto;
    }

    
    @Column(name="PARCELAS", nullable=false)
    public int getParcelas() {
        return this.parcelas;
    }
    
    public void setParcelas(int parcelas) {
        this.parcelas = parcelas;
    }

    
    @Column(name="D00")
    public Integer getD00() {
        return this.d00;
    }
    
    public void setD00(Integer d00) {
        this.d00 = d00;
    }

    
    @Column(name="D01")
    public Integer getD01() {
        return this.d01;
    }
    
    public void setD01(Integer d01) {
        this.d01 = d01;
    }

    
    @Column(name="D02")
    public Integer getD02() {
        return this.d02;
    }
    
    public void setD02(Integer d02) {
        this.d02 = d02;
    }

    
    @Column(name="D03")
    public Integer getD03() {
        return this.d03;
    }
    
    public void setD03(Integer d03) {
        this.d03 = d03;
    }

    
    @Column(name="D04")
    public Integer getD04() {
        return this.d04;
    }
    
    public void setD04(Integer d04) {
        this.d04 = d04;
    }

    
    @Column(name="D05")
    public Integer getD05() {
        return this.d05;
    }
    
    public void setD05(Integer d05) {
        this.d05 = d05;
    }

    
    @Column(name="D06")
    public Integer getD06() {
        return this.d06;
    }
    
    public void setD06(Integer d06) {
        this.d06 = d06;
    }

    
    @Column(name="D07")
    public Integer getD07() {
        return this.d07;
    }
    
    public void setD07(Integer d07) {
        this.d07 = d07;
    }

    
    @Column(name="D08")
    public Integer getD08() {
        return this.d08;
    }
    
    public void setD08(Integer d08) {
        this.d08 = d08;
    }

    
    @Column(name="D09")
    public Integer getD09() {
        return this.d09;
    }
    
    public void setD09(Integer d09) {
        this.d09 = d09;
    }

    
    @Column(name="P00")
    public Integer getP00() {
        return this.p00;
    }
    
    public void setP00(Integer p00) {
        this.p00 = p00;
    }

    
    @Column(name="P01")
    public Integer getP01() {
        return this.p01;
    }
    
    public void setP01(Integer p01) {
        this.p01 = p01;
    }

    
    @Column(name="P02")
    public Integer getP02() {
        return this.p02;
    }
    
    public void setP02(Integer p02) {
        this.p02 = p02;
    }

    
    @Column(name="P03")
    public Integer getP03() {
        return this.p03;
    }
    
    public void setP03(Integer p03) {
        this.p03 = p03;
    }

    
    @Column(name="P04")
    public Integer getP04() {
        return this.p04;
    }
    
    public void setP04(Integer p04) {
        this.p04 = p04;
    }

    
    @Column(name="P05")
    public Integer getP05() {
        return this.p05;
    }
    
    public void setP05(Integer p05) {
        this.p05 = p05;
    }

    
    @Column(name="P06")
    public Integer getP06() {
        return this.p06;
    }
    
    public void setP06(Integer p06) {
        this.p06 = p06;
    }

    
    @Column(name="P07")
    public Integer getP07() {
        return this.p07;
    }
    
    public void setP07(Integer p07) {
        this.p07 = p07;
    }

    
    @Column(name="P08")
    public Integer getP08() {
        return this.p08;
    }
    
    public void setP08(Integer p08) {
        this.p08 = p08;
    }

    
    @Column(name="P09")
    public Integer getP09() {
        return this.p09;
    }
    
    public void setP09(Integer p09) {
        this.p09 = p09;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="condPagto")
    public Set<Pedidos> getPedidoses() {
        return this.pedidoses;
    }
    
    public void setPedidoses(Set<Pedidos> pedidoses) {
        this.pedidoses = pedidoses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="condPagto")
    public Set<Assistencias> getAssistenciases() {
        return this.assistenciases;
    }
    
    public void setAssistenciases(Set<Assistencias> assistenciases) {
        this.assistenciases = assistenciases;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="condPagto")
    public Set<Nfiscais> getNfiscaises() {
        return this.nfiscaises;
    }
    
    public void setNfiscaises(Set<Nfiscais> nfiscaises) {
        this.nfiscaises = nfiscaises;
    }




}


