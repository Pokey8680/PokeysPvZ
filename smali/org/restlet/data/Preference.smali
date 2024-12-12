.class public final Lorg/restlet/data/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/data/Metadata;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile metadata:Lorg/restlet/data/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile parameters:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private volatile quality:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    const/4 v1, 0x0

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v1}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;FLorg/restlet/util/Series;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;FLorg/restlet/util/Series;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Metadata;F)V
    .locals 1
    .param p2, "quality"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;FLorg/restlet/util/Series;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Metadata;FLorg/restlet/util/Series;)V
    .locals 0
    .param p2, "quality"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    .local p3, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/restlet/data/Preference;->metadata:Lorg/restlet/data/Metadata;

    .line 94
    iput p2, p0, Lorg/restlet/data/Preference;->quality:F

    .line 95
    iput-object p3, p0, Lorg/restlet/data/Preference;->parameters:Lorg/restlet/util/Series;

    .line 96
    return-void
.end method


# virtual methods
.method public getMetadata()Lorg/restlet/data/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    iget-object v0, p0, Lorg/restlet/data/Preference;->metadata:Lorg/restlet/data/Metadata;

    return-object v0
.end method

.method public getParameters()Lorg/restlet/util/Series;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    iget-object v0, p0, Lorg/restlet/data/Preference;->parameters:Lorg/restlet/util/Series;

    .line 116
    .local v0, "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    if-nez v0, :cond_1

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/Preference;->parameters:Lorg/restlet/util/Series;

    .line 119
    if-nez v0, :cond_0

    .line 120
    new-instance v1, Lorg/restlet/util/Series;

    const-class v2, Lorg/restlet/data/Parameter;

    invoke-direct {v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    .local v1, "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/Preference;->parameters:Lorg/restlet/util/Series;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 122
    .end local v1    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    .restart local v0    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 124
    :cond_1
    return-object v0

    .line 122
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    .restart local v1    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    .restart local v0    # "p":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    goto :goto_0
.end method

.method public getQuality()F
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    iget v0, p0, Lorg/restlet/data/Preference;->quality:F

    return v0
.end method

.method public setMetadata(Lorg/restlet/data/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    iput-object p1, p0, Lorg/restlet/data/Preference;->metadata:Lorg/restlet/data/Metadata;

    .line 144
    return-void
.end method

.method public setParameters(Lorg/restlet/util/Series;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    iput-object p1, p0, Lorg/restlet/data/Preference;->parameters:Lorg/restlet/util/Series;

    .line 154
    return-void
.end method

.method public setQuality(F)V
    .locals 0
    .param p1, "quality"    # F

    .prologue
    .line 163
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    iput p1, p0, Lorg/restlet/data/Preference;->quality:F

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    .local p0, "this":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
