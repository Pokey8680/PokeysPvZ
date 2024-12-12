.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->downloadItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 278
    if-nez p2, :cond_0

    .line 280
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iget-object v1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    invoke-static {v0, p1, v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->access$200(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
