.class public Lorg/restlet/data/Disposition;
.super Ljava/lang/Object;
.source "Disposition.java"


# static fields
.field public static final NAME_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final NAME_FILENAME:Ljava/lang/String; = "filename"

.field public static final NAME_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final NAME_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final NAME_SIZE:Ljava/lang/String; = "size"

.field public static final TYPE_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final TYPE_INLINE:Ljava/lang/String; = "inline"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"


# instance fields
.field private parameters:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "none"

    invoke-direct {p0, v0}, Lorg/restlet/data/Disposition;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/restlet/data/Disposition;->type:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/util/Series;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-direct {p0, p1}, Lorg/restlet/data/Disposition;-><init>(Ljava/lang/String;)V

    .line 120
    iput-object p2, p0, Lorg/restlet/data/Disposition;->parameters:Lorg/restlet/util/Series;

    .line 121
    return-void
.end method


# virtual methods
.method public addDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v1

    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_822:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "filename"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/restlet/util/Series;
    .locals 2
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
    .line 151
    iget-object v0, p0, Lorg/restlet/data/Disposition;->parameters:Lorg/restlet/util/Series;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/restlet/util/Series;

    const-class v1, Lorg/restlet/data/Parameter;

    invoke-direct {v0, v1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/restlet/data/Disposition;->parameters:Lorg/restlet/util/Series;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/restlet/data/Disposition;->parameters:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/restlet/data/Disposition;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 174
    const-string v0, "creation-date"

    invoke-virtual {p0, v0, p1}, Lorg/restlet/data/Disposition;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 175
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v1

    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_822:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    .line 188
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "filename"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    .line 198
    return-void
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 207
    const-string v0, "modification-date"

    invoke-virtual {p0, v0, p1}, Lorg/restlet/data/Disposition;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 208
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
    .line 217
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    iput-object p1, p0, Lorg/restlet/data/Disposition;->parameters:Lorg/restlet/util/Series;

    .line 218
    return-void
.end method

.method public setReadDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 227
    const-string v0, "read-date"

    invoke-virtual {p0, v0, p1}, Lorg/restlet/data/Disposition;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 228
    return-void
.end method

.method public setSize(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "size"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    .line 238
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/restlet/data/Disposition;->type:Ljava/lang/String;

    .line 248
    return-void
.end method
