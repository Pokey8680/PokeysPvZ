.class public Lorg/restlet/data/Form;
.super Lorg/restlet/util/Series;
.source "Form.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/Series",
        "<",
        "Lorg/restlet/data/Parameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/restlet/data/Parameter;

    invoke-direct {p0, v0}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 66
    const-class v0, Lorg/restlet/data/Parameter;

    invoke-direct {p0, v0, p1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;CZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CZ)V
    .locals 1
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "decode"    # Z

    .prologue
    .line 157
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;C)V
    .locals 1
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V
    .locals 0
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C
    .param p4, "decode"    # Z

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/restlet/data/Form;-><init>()V

    .line 222
    invoke-static {p0, p1, p2, p4, p3}, Lorg/restlet/engine/util/FormUtils;->parse(Lorg/restlet/data/Form;Ljava/lang/String;Lorg/restlet/data/CharacterSet;ZC)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;Z)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "decode"    # Z

    .prologue
    .line 186
    const/16 v0, 0x26

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "decode"    # Z

    .prologue
    .line 126
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    const-class v0, Lorg/restlet/data/Parameter;

    invoke-direct {p0, v0, p1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "webForm"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Form;-><init>(Lorg/restlet/representation/Representation;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Z)V
    .locals 0
    .param p1, "webForm"    # Lorg/restlet/representation/Representation;
    .param p2, "decode"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/restlet/data/Form;-><init>()V

    .line 99
    invoke-static {p0, p1, p2}, Lorg/restlet/engine/util/FormUtils;->parse(Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Z)V

    .line 100
    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Parameter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Lorg/restlet/data/Parameter;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createEntry(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/restlet/data/Form;->createEntry(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Form;->encode(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 1
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/16 v0, 0x26

    invoke-virtual {p0, p1, v0}, Lorg/restlet/data/Form;->encode(Lorg/restlet/data/CharacterSet;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lorg/restlet/data/CharacterSet;C)Ljava/lang/String;
    .locals 3
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/data/Form;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 269
    if-lez v0, :cond_0

    .line 270
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    invoke-virtual {p0, v0}, Lorg/restlet/data/Form;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Parameter;

    invoke-virtual {v2, v1, p1}, Lorg/restlet/data/Parameter;->encode(Ljava/lang/Appendable;Lorg/restlet/data/CharacterSet;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMatrixString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Form;->getMatrixString(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatrixString(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 2
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 302
    const/16 v1, 0x3b

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/restlet/data/Form;->encode(Lorg/restlet/data/CharacterSet;C)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Form;->getQueryString(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 2
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/restlet/data/Form;->encode(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWebRepresentation()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Form;->getWebRepresentation(Lorg/restlet/data/CharacterSet;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public getWebRepresentation(Lorg/restlet/data/CharacterSet;)Lorg/restlet/representation/Representation;
    .locals 4
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 353
    new-instance v0, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {p0, p1}, Lorg/restlet/data/Form;->getQueryString(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;Lorg/restlet/data/CharacterSet;)V

    return-object v0
.end method
