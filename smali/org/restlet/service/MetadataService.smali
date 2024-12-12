.class public Lorg/restlet/service/MetadataService;
.super Lorg/restlet/service/Service;
.source "MetadataService.java"


# instance fields
.field private volatile defaultCharacterSet:Lorg/restlet/data/CharacterSet;

.field private volatile defaultEncoding:Lorg/restlet/data/Encoding;

.field private volatile defaultLanguage:Lorg/restlet/data/Language;

.field private volatile defaultMediaType:Lorg/restlet/data/MediaType;

.field private final mappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/MetadataExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/restlet/service/Service;-><init>()V

    .line 79
    sget-object v0, Lorg/restlet/data/CharacterSet;->DEFAULT:Lorg/restlet/data/CharacterSet;

    iput-object v0, p0, Lorg/restlet/service/MetadataService;->defaultCharacterSet:Lorg/restlet/data/CharacterSet;

    .line 80
    sget-object v0, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    iput-object v0, p0, Lorg/restlet/service/MetadataService;->defaultEncoding:Lorg/restlet/data/Encoding;

    .line 81
    sget-object v0, Lorg/restlet/data/Language;->DEFAULT:Lorg/restlet/data/Language;

    iput-object v0, p0, Lorg/restlet/service/MetadataService;->defaultLanguage:Lorg/restlet/data/Language;

    .line 82
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    iput-object v0, p0, Lorg/restlet/service/MetadataService;->defaultMediaType:Lorg/restlet/data/MediaType;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lorg/restlet/service/MetadataService;->addCommonExtensions()V

    .line 85
    return-void
.end method

.method private ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V
    .locals 1
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "metadata"    # Lorg/restlet/data/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/MetadataExtension;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/restlet/data/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/application/MetadataExtension;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;Z)V

    .line 427
    return-void
.end method

.method private ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;Z)V
    .locals 2
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "metadata"    # Lorg/restlet/data/Metadata;
    .param p4, "preferred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/MetadataExtension;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/restlet/data/Metadata;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/application/MetadataExtension;>;"
    if-eqz p4, :cond_0

    .line 446
    const/4 v0, 0x0

    new-instance v1, Lorg/restlet/engine/application/MetadataExtension;

    invoke-direct {v1, p2, p3}, Lorg/restlet/engine/application/MetadataExtension;-><init>(Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Lorg/restlet/engine/application/MetadataExtension;

    invoke-direct {v0, p2, p3}, Lorg/restlet/engine/application/MetadataExtension;-><init>(Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addCommonExtensions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "dm":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/application/MetadataExtension;>;"
    const-string v1, "en"

    sget-object v2, Lorg/restlet/data/Language;->ENGLISH:Lorg/restlet/data/Language;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 224
    const-string v1, "es"

    sget-object v2, Lorg/restlet/data/Language;->SPANISH:Lorg/restlet/data/Language;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 225
    const-string v1, "fr"

    sget-object v2, Lorg/restlet/data/Language;->FRENCH:Lorg/restlet/data/Language;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 227
    const-string v1, "ascii"

    sget-object v2, Lorg/restlet/data/CharacterSet;->US_ASCII:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 229
    const-string v1, "ai"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_POSTSCRIPT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 230
    const-string v1, "atom"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_ATOM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 231
    const-string v1, "atomcat"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_ATOMPUB_CATEGORY:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 232
    const-string v1, "atomsvc"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_ATOMPUB_SERVICE:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 233
    const-string v1, "au"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_BASIC:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 234
    const-string v1, "bin"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 235
    const-string v1, "bmp"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_BMP:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 236
    const-string v1, "class"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 237
    const-string v1, "css"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_CSS:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 238
    const-string v1, "csv"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_CSV:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 239
    const-string v1, "dat"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_DAT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 240
    const-string v1, "dib"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_BMP:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 241
    const-string v1, "doc"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_WORD:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 242
    const-string v1, "docm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_DOCM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 243
    const-string v1, "docx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_DOCX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 244
    const-string v1, "dotm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_DOTM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 245
    const-string v1, "dotx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_DOTX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 246
    const-string v1, "dtd"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_XML_DTD:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 247
    const-string v1, "ecore"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_ECORE:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 248
    const-string v1, "eps"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_POSTSCRIPT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 249
    const-string v1, "exe"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 250
    const-string v1, "fmt"

    sget-object v2, Lorg/restlet/data/Encoding;->FREEMARKER:Lorg/restlet/data/Encoding;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 251
    const-string v1, "form"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 252
    const-string v1, "ftl"

    sget-object v2, Lorg/restlet/data/Encoding;->FREEMARKER:Lorg/restlet/data/Encoding;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;Z)V

    .line 253
    const-string v1, "gif"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_GIF:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 254
    const-string v1, "gwt"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_GWT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 255
    const-string v1, "hqx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MAC_BINHEX40:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 256
    const-string v1, "ico"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_ICON:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 257
    const-string v1, "jad"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_J2ME_APP_DESCRIPTOR:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 258
    const-string v1, "jar"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_ARCHIVE:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 259
    const-string v1, "java"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 260
    const-string v1, "jnlp"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JNLP:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 261
    const-string v1, "jpe"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_JPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 262
    const-string v1, "jpeg"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_JPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 263
    const-string v1, "jpg"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_JPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 264
    const-string v1, "js"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVASCRIPT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 265
    const-string v1, "jsf"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 266
    const-string v1, "kar"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_MIDI:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 267
    const-string v1, "latex"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_LATEX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 268
    const-string v1, "latin1"

    sget-object v2, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 269
    const-string v1, "mac"

    sget-object v2, Lorg/restlet/data/CharacterSet;->MACINTOSH:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 270
    const-string v1, "man"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_TROFF_MAN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 271
    const-string v1, "mathml"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MATHML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 272
    const-string v1, "mid"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_MIDI:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 273
    const-string v1, "midi"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_MIDI:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 274
    const-string v1, "mov"

    sget-object v2, Lorg/restlet/data/MediaType;->VIDEO_QUICKTIME:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 275
    const-string v1, "mp2"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_MPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 276
    const-string v1, "mp3"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_MPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 277
    const-string v1, "mp4"

    sget-object v2, Lorg/restlet/data/MediaType;->VIDEO_MP4:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 278
    const-string v1, "mpe"

    sget-object v2, Lorg/restlet/data/MediaType;->VIDEO_MPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 279
    const-string v1, "mpeg"

    sget-object v2, Lorg/restlet/data/MediaType;->VIDEO_MPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 280
    const-string v1, "mpg"

    sget-object v2, Lorg/restlet/data/MediaType;->VIDEO_MPEG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 281
    const-string v1, "n3"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_RDF_N3:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 282
    const-string v1, "nt"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 283
    const-string v1, "odb"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODB:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 284
    const-string v1, "odc"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODC:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 285
    const-string v1, "odf"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODF:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 286
    const-string v1, "odi"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODI:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 287
    const-string v1, "odm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 288
    const-string v1, "odg"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 289
    const-string v1, "odp"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODP:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 290
    const-string v1, "ods"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODS:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 291
    const-string v1, "odt"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_ODT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 292
    const-string v1, "onetoc"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_ONETOC:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 293
    const-string v1, "onetoc2"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_ONETOC2:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 294
    const-string v1, "otg"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_OTG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 295
    const-string v1, "oth"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_OTH:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 296
    const-string v1, "otp"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_OTP:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 297
    const-string v1, "ots"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_OTS:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 298
    const-string v1, "ott"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_OTT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 299
    const-string v1, "oxt"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OPENOFFICE_OXT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 300
    const-string v1, "pdf"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_PDF:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 301
    const-string v1, "png"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_PNG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 302
    const-string v1, "potx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_POTX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 303
    const-string v1, "potm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_POTM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 304
    const-string v1, "ppam"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_PPAM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 305
    const-string v1, "pps"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_POWERPOINT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 306
    const-string v1, "ppsm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_PPSM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 307
    const-string v1, "ppsx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_PPSX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 308
    const-string v1, "ppt"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_POWERPOINT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 309
    const-string v1, "pptm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_PPTM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 310
    const-string v1, "pptx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_PPTX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 311
    const-string v1, "ps"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_POSTSCRIPT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 312
    const-string v1, "qt"

    sget-object v2, Lorg/restlet/data/MediaType;->VIDEO_QUICKTIME:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 313
    const-string v1, "rdf"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_RDF_XML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 314
    const-string v1, "rnc"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_RELAXNG_COMPACT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 315
    const-string v1, "rng"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_RELAXNG_XML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 316
    const-string v1, "rss"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_RSS:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 317
    const-string v1, "rtf"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_RTF:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 318
    const-string v1, "sav"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_SPSS_SAV:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 319
    const-string v1, "sit"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_STUFFIT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 320
    const-string v1, "sldm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_SLDM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 321
    const-string v1, "sldx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_SLDX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 322
    const-string v1, "snd"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_BASIC:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 323
    const-string v1, "sps"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_SPSS_SPS:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 324
    const-string v1, "sta"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_STATA_STA:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 325
    const-string v1, "svg"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_SVG:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 326
    const-string v1, "swf"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_FLASH:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 327
    const-string v1, "tar"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_TAR:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 328
    const-string v1, "tex"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_TEX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 329
    const-string v1, "tif"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_TIFF:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 330
    const-string v1, "tiff"

    sget-object v2, Lorg/restlet/data/MediaType;->IMAGE_TIFF:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 331
    const-string v1, "tsv"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_TSV:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 332
    const-string v1, "ulw"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_BASIC:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 333
    const-string v1, "utf16"

    sget-object v2, Lorg/restlet/data/CharacterSet;->UTF_16:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 334
    const-string v1, "utf8"

    sget-object v2, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 335
    const-string v1, "vm"

    sget-object v2, Lorg/restlet/data/Encoding;->VELOCITY:Lorg/restlet/data/Encoding;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 336
    const-string v1, "vrml"

    sget-object v2, Lorg/restlet/data/MediaType;->MODEL_VRML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 337
    const-string v1, "vxml"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_VOICEXML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 338
    const-string v1, "wadl"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_WADL:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 339
    const-string v1, "wav"

    sget-object v2, Lorg/restlet/data/MediaType;->AUDIO_WAV:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 340
    const-string v1, "win"

    sget-object v2, Lorg/restlet/data/CharacterSet;->WINDOWS_1252:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 341
    const-string v1, "wrl"

    sget-object v2, Lorg/restlet/data/MediaType;->MODEL_VRML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 342
    const-string v1, "xht"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_XHTML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 343
    const-string v1, "xls"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_EXCEL:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 344
    const-string v1, "xlsx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_XLSX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 345
    const-string v1, "xlsm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_XLSM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 346
    const-string v1, "xltx"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_XLTX:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 347
    const-string v1, "xltm"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_XLTM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 348
    const-string v1, "xlsb"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_XLSB:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 349
    const-string v1, "xlam"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_MSOFFICE_XLAM:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 350
    const-string v1, "xmi"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_XMI:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 351
    const-string v1, "xsd"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_W3C_SCHEMA:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 352
    const-string v1, "xsl"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_W3C_XSLT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 353
    const-string v1, "xslt"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_W3C_XSLT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 354
    const-string v1, "xul"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_XUL:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 355
    const-string v1, "z"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_COMPRESS:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 356
    const-string v1, "zip"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_ZIP:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 357
    const-string v1, "htm"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_HTML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 358
    const-string v1, "html"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_HTML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 359
    const-string v1, "json"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JSON:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 360
    const-string v1, "txt"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;Z)V

    .line 361
    const-string v1, "xhtml"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_XHTML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 362
    const-string v1, "xml"

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_XML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 363
    const-string v1, "xml"

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_XML:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/service/MetadataService;->ext(Ljava/util/List;Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    .line 366
    iget-object v1, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    return-void
.end method

.method public addExtension(Ljava/lang/String;Lorg/restlet/data/Metadata;)V
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "metadata"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/service/MetadataService;->addExtension(Ljava/lang/String;Lorg/restlet/data/Metadata;Z)V

    .line 380
    return-void
.end method

.method public addExtension(Ljava/lang/String;Lorg/restlet/data/Metadata;Z)V
    .locals 3
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "metadata"    # Lorg/restlet/data/Metadata;
    .param p3, "preferred"    # Z

    .prologue
    .line 395
    if-eqz p3, :cond_0

    .line 397
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lorg/restlet/engine/application/MetadataExtension;

    invoke-direct {v2, p1, p2}, Lorg/restlet/engine/application/MetadataExtension;-><init>(Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    new-instance v1, Lorg/restlet/engine/application/MetadataExtension;

    invoke-direct {v1, p1, p2}, Lorg/restlet/engine/application/MetadataExtension;-><init>(Ljava/lang/String;Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearExtensions()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    return-void
.end method

.method public getAllCharacterSetExtensionNames()Ljava/util/List;
    .locals 4
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
    .line 459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 462
    .local v1, "mapping":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/CharacterSet;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    .end local v1    # "mapping":Lorg/restlet/engine/application/MetadataExtension;
    :cond_1
    return-object v2
.end method

.method public getAllCharacterSets(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    const/4 v2, 0x0

    .line 482
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CharacterSet;>;"
    if-eqz p1, :cond_2

    .line 484
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 485
    .local v1, "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/CharacterSet;

    if-eqz v3, :cond_0

    .line 487
    if-nez v2, :cond_1

    .line 488
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CharacterSet;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CharacterSet;>;"
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    :cond_2
    return-object v2
.end method

.method public getAllEncodingExtensionNames()Ljava/util/List;
    .locals 4
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
    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 508
    .local v1, "mapping":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/Encoding;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v1    # "mapping":Lorg/restlet/engine/application/MetadataExtension;
    :cond_1
    return-object v2
.end method

.method public getAllExtensionNames()Ljava/util/List;
    .locals 4
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
    .line 523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 526
    .local v1, "mapping":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v1    # "mapping":Lorg/restlet/engine/application/MetadataExtension;
    :cond_1
    return-object v2
.end method

.method public getAllLanguageExtensionNames()Ljava/util/List;
    .locals 4
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
    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 543
    .local v1, "mapping":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/Language;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 545
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v1    # "mapping":Lorg/restlet/engine/application/MetadataExtension;
    :cond_1
    return-object v2
.end method

.method public getAllLanguages(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    const/4 v2, 0x0

    .line 563
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    if-eqz p1, :cond_2

    .line 565
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 566
    .local v1, "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/Language;

    if-eqz v3, :cond_0

    .line 568
    if-nez v2, :cond_1

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getLanguage()Lorg/restlet/data/Language;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    :cond_2
    return-object v2
.end method

.method public getAllMediaTypeExtensionNames()Ljava/util/List;
    .locals 4
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
    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 589
    .local v1, "mapping":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/MediaType;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 591
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    .end local v1    # "mapping":Lorg/restlet/engine/application/MetadataExtension;
    :cond_1
    return-object v2
.end method

.method public getAllMediaTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    const/4 v2, 0x0

    .line 609
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    if-eqz p1, :cond_2

    .line 611
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 612
    .local v1, "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    instance-of v3, v3, Lorg/restlet/data/MediaType;

    if-eqz v3, :cond_0

    .line 614
    if-nez v2, :cond_1

    .line 615
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    :cond_2
    return-object v2
.end method

.method public getAllMetadata(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Metadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    const/4 v2, 0x0

    .line 637
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Metadata;>;"
    if-eqz p1, :cond_2

    .line 639
    iget-object v3, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 640
    .local v1, "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    if-nez v2, :cond_1

    .line 642
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Metadata;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Metadata;>;"
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 650
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    :cond_2
    return-object v2
.end method

.method public getCharacterSet(Ljava/lang/String;)Lorg/restlet/data/CharacterSet;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 665
    const-class v0, Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, p1, v0}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/CharacterSet;

    return-object v0
.end method

.method public getDefaultCharacterSet()Lorg/restlet/data/CharacterSet;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->defaultCharacterSet:Lorg/restlet/data/CharacterSet;

    return-object v0
.end method

.method public getDefaultEncoding()Lorg/restlet/data/Encoding;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->defaultEncoding:Lorg/restlet/data/Encoding;

    return-object v0
.end method

.method public getDefaultLanguage()Lorg/restlet/data/Language;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->defaultLanguage:Lorg/restlet/data/Language;

    return-object v0
.end method

.method public getDefaultMediaType()Lorg/restlet/data/MediaType;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/restlet/service/MetadataService;->defaultMediaType:Lorg/restlet/data/MediaType;

    return-object v0
.end method

.method public getEncoding(Ljava/lang/String;)Lorg/restlet/data/Encoding;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 715
    const-class v0, Lorg/restlet/data/Encoding;

    invoke-virtual {p0, p1, v0}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Encoding;

    return-object v0
.end method

.method public getExtension(Lorg/restlet/data/Metadata;)Ljava/lang/String;
    .locals 3
    .param p1, "metadata"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 726
    if-eqz p1, :cond_1

    .line 728
    iget-object v2, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 729
    .local v1, "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/restlet/data/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v2

    .line 734
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLanguage(Ljava/lang/String;)Lorg/restlet/data/Language;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 748
    const-class v0, Lorg/restlet/data/Language;

    invoke-virtual {p0, p1, v0}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Language;

    return-object v0
.end method

.method public getMediaType(Ljava/lang/String;)Lorg/restlet/data/MediaType;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 764
    const-class v0, Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/MediaType;

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;
    .locals 3
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 778
    if-eqz p1, :cond_1

    .line 780
    iget-object v2, p0, Lorg/restlet/service/MetadataService;->mappings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/application/MetadataExtension;

    .line 781
    .local v1, "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    invoke-virtual {v1}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v2

    .line 787
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExtension":Lorg/restlet/engine/application/MetadataExtension;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMetadata(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/data/Metadata;
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/data/Metadata;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "metadataType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v0

    .line 805
    .local v0, "metadata":Lorg/restlet/data/Metadata;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Metadata;

    .line 810
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultCharacterSet(Lorg/restlet/data/CharacterSet;)V
    .locals 0
    .param p1, "defaultCharacterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 820
    iput-object p1, p0, Lorg/restlet/service/MetadataService;->defaultCharacterSet:Lorg/restlet/data/CharacterSet;

    .line 821
    return-void
.end method

.method public setDefaultEncoding(Lorg/restlet/data/Encoding;)V
    .locals 0
    .param p1, "defaultEncoding"    # Lorg/restlet/data/Encoding;

    .prologue
    .line 830
    iput-object p1, p0, Lorg/restlet/service/MetadataService;->defaultEncoding:Lorg/restlet/data/Encoding;

    .line 831
    return-void
.end method

.method public setDefaultLanguage(Lorg/restlet/data/Language;)V
    .locals 0
    .param p1, "defaultLanguage"    # Lorg/restlet/data/Language;

    .prologue
    .line 840
    iput-object p1, p0, Lorg/restlet/service/MetadataService;->defaultLanguage:Lorg/restlet/data/Language;

    .line 841
    return-void
.end method

.method public setDefaultMediaType(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "defaultMediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 850
    iput-object p1, p0, Lorg/restlet/service/MetadataService;->defaultMediaType:Lorg/restlet/data/MediaType;

    .line 851
    return-void
.end method
