.class final Lcom/chillingo/libterms/config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5f30220c29c1a13L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/util/Date;

.field private g:Lcom/chillingo/libterms/model/TermsConfig;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->k:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 125
    return-void
.end method

.method public a(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->g:Lcom/chillingo/libterms/model/TermsConfig;

    .line 85
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->c:Ljava/lang/Boolean;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->b:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->f:Ljava/util/Date;

    .line 93
    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->d:Ljava/lang/Boolean;

    .line 69
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->e:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->l:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method c(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->i:Ljava/lang/Boolean;

    .line 101
    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method d(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->h:Ljava/lang/Boolean;

    .line 109
    return-void
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method e(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/chillingo/libterms/config/a;->j:Ljava/lang/Boolean;

    .line 117
    return-void
.end method

.method public f()Lcom/chillingo/libterms/model/TermsConfig;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->g:Lcom/chillingo/libterms/model/TermsConfig;

    return-object v0
.end method

.method g()Ljava/util/Date;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->f:Ljava/util/Date;

    return-object v0
.end method

.method h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method i()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method j()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method k()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->k:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/chillingo/libterms/config/a;->l:Ljava/lang/String;

    return-object v0
.end method
