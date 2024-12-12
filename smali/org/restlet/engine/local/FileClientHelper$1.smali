.class Lorg/restlet/engine/local/FileClientHelper$1;
.super Ljava/lang/Object;
.source "FileClientHelper.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/local/FileClientHelper;->handleFilePut(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/local/FileClientHelper;

.field final synthetic val$baseName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/restlet/engine/local/FileClientHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/restlet/engine/local/FileClientHelper$1;->this$0:Lorg/restlet/engine/local/FileClientHelper;

    iput-object p2, p0, Lorg/restlet/engine/local/FileClientHelper$1;->val$baseName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/engine/local/FileClientHelper$1;->val$baseName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/engine/local/FileClientHelper$1;->this$0:Lorg/restlet/engine/local/FileClientHelper;

    invoke-virtual {v2}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/restlet/engine/local/Entity;->getBaseName(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
