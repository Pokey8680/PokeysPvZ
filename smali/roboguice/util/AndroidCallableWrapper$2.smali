.class Lroboguice/util/AndroidCallableWrapper$2;
.super Ljava/lang/Object;
.source "AndroidCallableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/util/AndroidCallableWrapper;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lroboguice/util/AndroidCallableWrapper;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper$2;, "Lroboguice/util/AndroidCallableWrapper.2;"
    iput-object p1, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iput-object p2, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    iput-object p3, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 89
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper$2;, "Lroboguice/util/AndroidCallableWrapper.2;"
    :try_start_0
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v2, v2, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 92
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    iget-object v3, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v3, v3, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v0, v2, [Ljava/lang/StackTraceElement;

    .line 93
    .local v0, "result":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v2, v2, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    array-length v4, v1

    iget-object v5, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v5, v5, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 97
    .end local v0    # "result":[Ljava/lang/StackTraceElement;
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_0
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v3, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lroboguice/util/AndroidCallableWrapper;->doOnException(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    invoke-virtual {v2}, Lroboguice/util/AndroidCallableWrapper;->doOnFinally()V

    .line 104
    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v3, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lroboguice/util/AndroidCallableWrapper;->doOnSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    invoke-virtual {v3}, Lroboguice/util/AndroidCallableWrapper;->doOnFinally()V

    throw v2
.end method
