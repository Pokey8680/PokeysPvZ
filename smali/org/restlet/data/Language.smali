.class public final Lorg/restlet/data/Language;
.super Lorg/restlet/data/Metadata;
.source "Language.java"


# static fields
.field public static final ALL:Lorg/restlet/data/Language;

.field public static final DEFAULT:Lorg/restlet/data/Language;

.field public static final ENGLISH:Lorg/restlet/data/Language;

.field public static final ENGLISH_US:Lorg/restlet/data/Language;

.field public static final FRENCH:Lorg/restlet/data/Language;

.field public static final FRENCH_FRANCE:Lorg/restlet/data/Language;

.field public static final SPANISH:Lorg/restlet/data/Language;


# instance fields
.field private volatile subTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/restlet/data/Language;

    const-string v1, "*"

    const-string v2, "All languages"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    .line 56
    new-instance v0, Lorg/restlet/data/Language;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->DEFAULT:Lorg/restlet/data/Language;

    .line 61
    new-instance v0, Lorg/restlet/data/Language;

    const-string v1, "en"

    const-string v2, "English language"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->ENGLISH:Lorg/restlet/data/Language;

    .line 65
    new-instance v0, Lorg/restlet/data/Language;

    const-string v1, "en-us"

    const-string v2, "English language in USA"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->ENGLISH_US:Lorg/restlet/data/Language;

    .line 69
    new-instance v0, Lorg/restlet/data/Language;

    const-string v1, "fr"

    const-string v2, "French language"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->FRENCH:Lorg/restlet/data/Language;

    .line 72
    new-instance v0, Lorg/restlet/data/Language;

    const-string v1, "fr-fr"

    const-string v2, "French language in France"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->FRENCH_FRANCE:Lorg/restlet/data/Language;

    .line 76
    new-instance v0, Lorg/restlet/data/Language;

    const-string v1, "es"

    const-string v2, "Spanish language"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Language;->SPANISH:Lorg/restlet/data/Language;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "Language or range of languages"

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lorg/restlet/data/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/data/Language;->subTags:Ljava/util/List;

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/Language;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "result":Lorg/restlet/data/Language;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    sget-object v1, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-virtual {v1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v0, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    sget-object v1, Lorg/restlet/data/Language;->ENGLISH:Lorg/restlet/data/Language;

    invoke-virtual {v1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    sget-object v0, Lorg/restlet/data/Language;->ENGLISH:Lorg/restlet/data/Language;

    goto :goto_0

    .line 95
    :cond_2
    sget-object v1, Lorg/restlet/data/Language;->ENGLISH_US:Lorg/restlet/data/Language;

    invoke-virtual {v1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    sget-object v0, Lorg/restlet/data/Language;->ENGLISH_US:Lorg/restlet/data/Language;

    goto :goto_0

    .line 97
    :cond_3
    sget-object v1, Lorg/restlet/data/Language;->FRENCH:Lorg/restlet/data/Language;

    invoke-virtual {v1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    sget-object v0, Lorg/restlet/data/Language;->FRENCH:Lorg/restlet/data/Language;

    goto :goto_0

    .line 99
    :cond_4
    sget-object v1, Lorg/restlet/data/Language;->FRENCH_FRANCE:Lorg/restlet/data/Language;

    invoke-virtual {v1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    sget-object v0, Lorg/restlet/data/Language;->FRENCH_FRANCE:Lorg/restlet/data/Language;

    goto :goto_0

    .line 101
    :cond_5
    sget-object v1, Lorg/restlet/data/Language;->SPANISH:Lorg/restlet/data/Language;

    invoke-virtual {v1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    sget-object v0, Lorg/restlet/data/Language;->SPANISH:Lorg/restlet/data/Language;

    goto :goto_0

    .line 104
    :cond_6
    new-instance v0, Lorg/restlet/data/Language;

    .end local v0    # "result":Lorg/restlet/data/Language;
    invoke-direct {v0, p0}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;)V

    .restart local v0    # "result":Lorg/restlet/data/Language;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 140
    instance-of v0, p1, Lorg/restlet/data/Language;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/restlet/data/Language;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/restlet/data/Language;
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "result":Lorg/restlet/data/Language;
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getSubTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Language;->getSubTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getPrimaryTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/data/Language;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Language;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :cond_0
    sget-object v1, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-virtual {p0, v1}, Lorg/restlet/data/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_1
    sget-object v0, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    goto :goto_1
.end method

.method public bridge synthetic getParent()Lorg/restlet/data/Metadata;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getParent()Lorg/restlet/data/Language;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 165
    .local v0, "separator":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubTags()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v3, p0, Lorg/restlet/data/Language;->subTags:Ljava/util/List;

    .line 180
    .local v3, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v3, p0, Lorg/restlet/data/Language;->subTags:Ljava/util/List;

    .line 183
    if-nez v3, :cond_1

    .line 184
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 185
    .local v2, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "tags":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    .line 188
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 189
    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    .end local v1    # "tags":[Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/restlet/data/Language;->subTags:Ljava/util/List;

    .line 196
    .end local v2    # "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    .line 198
    :cond_2
    return-object v3

    .line 196
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public includes(Lorg/restlet/data/Metadata;)Z
    .locals 4
    .param p1, "included"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 225
    sget-object v2, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-virtual {p0, v2}, Lorg/restlet/data/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/restlet/data/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 227
    .local v1, "result":Z
    :goto_0
    if-nez v1, :cond_1

    instance-of v2, p1, Lorg/restlet/data/Language;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 228
    check-cast v0, Lorg/restlet/data/Language;

    .line 230
    .local v0, "includedLanguage":Lorg/restlet/data/Language;
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getPrimaryTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/Language;->getPrimaryTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getSubTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/Language;->getSubTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    const/4 v1, 0x1

    .line 240
    .end local v0    # "includedLanguage":Lorg/restlet/data/Language;
    :cond_1
    :goto_1
    return v1

    .line 225
    .end local v1    # "result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 234
    .restart local v0    # "includedLanguage":Lorg/restlet/data/Language;
    .restart local v1    # "result":Z
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/data/Language;->getSubTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const/4 v1, 0x1

    goto :goto_1
.end method
