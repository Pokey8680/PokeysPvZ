.class Lcom/ea/rs/xpromo/Item$2;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/ea/rs/xpromo/Item$IconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/rs/xpromo/Item;->downloadIconToFile(Ljava/lang/String;Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/rs/xpromo/Item;

.field private final synthetic val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

.field private final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/rs/xpromo/Item;Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ea/rs/xpromo/Item$2;->this$0:Lcom/ea/rs/xpromo/Item;

    iput-object p2, p0, Lcom/ea/rs/xpromo/Item$2;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/rs/xpromo/Item$2;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadToBuffer([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 176
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$2;->val$filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, "targetFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 180
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v2, "output":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 187
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v1, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$2;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    invoke-interface {v4, v0}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$2;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    invoke-interface {v4, v0}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onDownloadToFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item$2;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    invoke-interface {v0, p1}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    .line 204
    return-void
.end method
