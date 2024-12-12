.class public Lorg/restlet/engine/header/PreferenceWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "PreferenceWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Preference",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static isValidQuality(F)Z
    .locals 1
    .param p0, "quality"    # F

    .prologue
    .line 57
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "prefs"    # Ljava/util/List;

    .prologue
    .line 70
    new-instance v0, Lorg/restlet/engine/header/PreferenceWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/PreferenceWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/PreferenceWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lorg/restlet/data/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/PreferenceWriter;->append(Lorg/restlet/data/Preference;)Lorg/restlet/engine/header/PreferenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Preference;)Lorg/restlet/engine/header/PreferenceWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Preference",
            "<*>;)",
            "Lorg/restlet/engine/header/PreferenceWriter;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<*>;"
    invoke-virtual {p1}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/PreferenceWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 77
    invoke-virtual {p1}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 78
    const-string v2, ";q="

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/PreferenceWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 79
    invoke-virtual {p1}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/PreferenceWriter;->appendQuality(F)Lorg/restlet/engine/header/PreferenceWriter;

    .line 82
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/Preference;->getParameters()Lorg/restlet/util/Series;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {p1}, Lorg/restlet/data/Preference;->getParameters()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Parameter;

    .line 89
    .local v1, "param":Lorg/restlet/data/Parameter;
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 90
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/PreferenceWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 92
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 94
    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/PreferenceWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 100
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    .end local v1    # "param":Lorg/restlet/data/Parameter;
    :cond_2
    return-object p0
.end method

.method public appendQuality(F)Lorg/restlet/engine/header/PreferenceWriter;
    .locals 4
    .param p1, "quality"    # F

    .prologue
    .line 112
    invoke-static {p1}, Lorg/restlet/engine/header/PreferenceWriter;->isValidQuality(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid quality value detected. Value must be between 0 and 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 119
    .local v0, "formatter":Ljava/text/NumberFormat;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 120
    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/PreferenceWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 122
    return-object p0
.end method
