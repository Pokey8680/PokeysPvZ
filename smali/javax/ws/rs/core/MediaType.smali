.class public Ljavax/ws/rs/core/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field public static final APPLICATION_ATOM_XML:Ljava/lang/String; = "application/atom+xml"

.field public static final APPLICATION_ATOM_XML_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final APPLICATION_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final APPLICATION_FORM_URLENCODED_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_JSON_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final APPLICATION_OCTET_STREAM_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final APPLICATION_SVG_XML:Ljava/lang/String; = "application/svg+xml"

.field public static final APPLICATION_SVG_XML_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final APPLICATION_XHTML_XML:Ljava/lang/String; = "application/xhtml+xml"

.field public static final APPLICATION_XHTML_XML_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final APPLICATION_XML:Ljava/lang/String; = "application/xml"

.field public static final APPLICATION_XML_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final MEDIA_TYPE_WILDCARD:Ljava/lang/String; = "*"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field public static final MULTIPART_FORM_DATA_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_HTML_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_PLAIN_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final TEXT_XML_TYPE:Ljavax/ws/rs/core/MediaType;

.field public static final WILDCARD:Ljava/lang/String; = "*/*"

.field public static final WILDCARD_TYPE:Ljavax/ws/rs/core/MediaType;

.field private static final delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate",
            "<",
            "Ljavax/ws/rs/core/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private static final emptyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subtype:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/core/MediaType;->emptyMap:Ljava/util/Map;

    .line 44
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v0

    const-class v1, Ljavax/ws/rs/core/MediaType;

    invoke-virtual {v0, v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createHeaderDelegate(Ljava/lang/Class;)Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/core/MediaType;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    .line 54
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    invoke-direct {v0}, Ljavax/ws/rs/core/MediaType;-><init>()V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->WILDCARD_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 59
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "xml"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_XML_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 64
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "atom+xml"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_ATOM_XML_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 69
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "xhtml+xml"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_XHTML_XML_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 74
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "svg+xml"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_SVG_XML_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 79
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_JSON_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 84
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "x-www-form-urlencoded"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_FORM_URLENCODED_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 89
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "multipart"

    const-string v2, "form-data"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->MULTIPART_FORM_DATA_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 94
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "application"

    const-string v2, "octet-stream"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->APPLICATION_OCTET_STREAM_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 99
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "text"

    const-string v2, "plain"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->TEXT_PLAIN_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 104
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "text"

    const-string v2, "xml"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->TEXT_XML_TYPE:Ljavax/ws/rs/core/MediaType;

    .line 109
    new-instance v0, Ljavax/ws/rs/core/MediaType;

    const-string v1, "text"

    const-string v2, "html"

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/MediaType;->TEXT_HTML_TYPE:Ljavax/ws/rs/core/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "*"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v0, Ljavax/ws/rs/core/MediaType;->emptyMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Ljavax/ws/rs/core/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-nez p1, :cond_0

    const-string p1, "*"

    .end local p1    # "type":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    .line 134
    if-nez p2, :cond_1

    const-string p2, "*"

    .end local p2    # "subtype":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    .line 135
    if-nez p3, :cond_2

    .line 136
    sget-object v3, Ljavax/ws/rs/core/MediaType;->emptyMap:Ljava/util/Map;

    iput-object v3, p0, Ljavax/ws/rs/core/MediaType;->parameters:Ljava/util/Map;

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_2
    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Ljavax/ws/rs/core/MediaType$1;

    invoke-direct {v3, p0}, Ljavax/ws/rs/core/MediaType$1;-><init>(Ljavax/ws/rs/core/MediaType;)V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 143
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Ljavax/ws/rs/core/MediaType;->parameters:Ljava/util/Map;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/MediaType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Ljavax/ws/rs/core/MediaType;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/MediaType;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    instance-of v2, p1, Ljavax/ws/rs/core/MediaType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Ljavax/ws/rs/core/MediaType;

    .line 244
    .local v0, "other":Ljavax/ws/rs/core/MediaType;
    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->parameters:Ljava/util/Map;

    iget-object v3, v0, Ljavax/ws/rs/core/MediaType;->parameters:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Ljavax/ws/rs/core/MediaType;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/ws/rs/core/MediaType;->parameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCompatible(Ljavax/ws/rs/core/MediaType;)Z
    .locals 4
    .param p1, "other"    # Ljavax/ws/rs/core/MediaType;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 217
    if-nez p1, :cond_1

    move v0, v1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    iget-object v3, p1, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    :cond_2
    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    iget-object v3, p1, Ljavax/ws/rs/core/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    iget-object v3, p1, Ljavax/ws/rs/core/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isWildcardSubtype()Z
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Ljavax/ws/rs/core/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWildcardType()Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Ljavax/ws/rs/core/MediaType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Ljavax/ws/rs/core/MediaType;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
