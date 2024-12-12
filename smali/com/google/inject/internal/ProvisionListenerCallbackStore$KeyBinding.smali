.class Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;
.super Ljava/lang/Object;
.source "ProvisionListenerCallbackStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProvisionListenerCallbackStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyBinding"
.end annotation


# instance fields
.field final binding:Lcom/google/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Lcom/google/inject/Binding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    .local p2, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    .line 116
    iput-object p2, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->binding:Lcom/google/inject/Binding;

    .line 117
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    check-cast p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->hashCode()I

    move-result v0

    return v0
.end method
