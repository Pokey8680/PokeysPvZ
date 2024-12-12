.class Lorg/roboguice/shaded/goole/common/base/Joiner$1;
.super Lorg/roboguice/shaded/goole/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Joiner;->useForNull(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Joiner;

.field final synthetic val$nullText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Joiner;Lorg/roboguice/shaded/goole/common/base/Joiner;Ljava/lang/String;)V
    .locals 1
    .param p2, "x0"    # Lorg/roboguice/shaded/goole/common/base/Joiner;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Joiner$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Joiner;

    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Joiner;-><init>(Lorg/roboguice/shaded/goole/common/base/Joiner;Lorg/roboguice/shaded/goole/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public skipNulls()Lorg/roboguice/shaded/goole/common/base/Joiner;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "part"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 221
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Joiner$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Joiner;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public useForNull(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;
    .locals 2
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
