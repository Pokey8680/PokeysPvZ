.class final Lcom/google/inject/internal/Annotations$2;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/Annotations;->generateAnnotationImpl(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$annotationType:Ljava/lang/Class;

.field final synthetic val$members:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "name":Ljava/lang/String;
    const-string v1, "annotationType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    .line 111
    :goto_0
    return-object v1

    .line 104
    :cond_0
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/inject/internal/Annotations;->access$100(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_1
    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/inject/internal/Annotations;->access$200(Ljava/lang/Class;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_2
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-static {v1, v2, v3}, Lcom/google/inject/internal/Annotations;->access$300(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
