.class Lcom/google/inject/spi/Elements$RecordingBinder;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/google/inject/Binder;
.implements Lcom/google/inject/PrivateBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingBinder"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private moduleSource:Lcom/google/inject/spi/ModuleSource;

.field private final modules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/spi/Elements$RecordingBinder;

.field private final privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

.field private final source:Ljava/lang/Object;

.field private final sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

.field private final stage:Lcom/google/inject/Stage;


# direct methods
.method private constructor <init>(Lcom/google/inject/Stage;)V
    .locals 5
    .param p1, "stage"    # Lcom/google/inject/Stage;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 154
    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 155
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 156
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 157
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/google/inject/internal/util/SourceProvider;->DEFAULT_INSTANCE:Lcom/google/inject/internal/util/SourceProvider;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/google/inject/spi/Elements;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/inject/spi/Elements$RecordingBinder;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/inject/AbstractModule;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/inject/internal/ConstantBindingBuilderImpl;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/inject/internal/AbstractBindingBuilder;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/inject/internal/BindingBuilder;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/util/SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/util/SourceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    .line 161
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 162
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Stage;Lcom/google/inject/spi/Elements$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/inject/Stage;
    .param p2, "x1"    # Lcom/google/inject/spi/Elements$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/Stage;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/Elements$RecordingBinder;Lcom/google/inject/internal/PrivateElementsImpl;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/inject/spi/Elements$RecordingBinder;
    .param p2, "privateElements"    # Lcom/google/inject/internal/PrivateElementsImpl;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 182
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 183
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 184
    invoke-virtual {p2}, Lcom/google/inject/internal/PrivateElementsImpl;->getElementsMutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 185
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 186
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 187
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    .line 188
    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 189
    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 190
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/util/SourceProvider;)V
    .locals 3
    .param p1, "prototype"    # Lcom/google/inject/spi/Elements$RecordingBinder;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "sourceProvider"    # Lcom/google/inject/internal/util/SourceProvider;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 168
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 170
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 171
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 172
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 173
    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 174
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 175
    iput-object p3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    .line 176
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 177
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 178
    return-void

    :cond_0
    move v2, v1

    .line 168
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/google/inject/spi/Elements$RecordingBinder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/spi/Elements$RecordingBinder;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    return-object v0
.end method

.method private exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-nez v1, :cond_0

    .line 369
    const-string v1, "Cannot expose %s on a standard binder. Exposed bindings are only applicable to private binders."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder$1;

    invoke-direct {v0, p0}, Lcom/google/inject/spi/Elements$RecordingBinder$1;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;)V

    .line 379
    :goto_0
    return-object v0

    .line 377
    :cond_0
    new-instance v0, Lcom/google/inject/internal/ExposureBuilder;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/inject/internal/ExposureBuilder;-><init>(Lcom/google/inject/Binder;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 378
    .local v0, "builder":Lcom/google/inject/internal/ExposureBuilder;, "Lcom/google/inject/internal/ExposureBuilder<TT;>;"
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/PrivateElementsImpl;->addExposureBuilder(Lcom/google/inject/internal/ExposureBuilder;)V

    goto :goto_0
.end method

.method private getElementSource()Lcom/google/inject/spi/ElementSource;
    .locals 7

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/StackTraceElement;

    .line 401
    .local v3, "partialCallStack":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 403
    .local v2, "originalSource":Lcom/google/inject/spi/ElementSource;
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 404
    .local v1, "declaringSource":Ljava/lang/Object;
    instance-of v5, v1, Lcom/google/inject/spi/ElementSource;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 405
    check-cast v2, Lcom/google/inject/spi/ElementSource;

    .line 406
    invoke-virtual {v2}, Lcom/google/inject/spi/ElementSource;->getDeclaringSource()Ljava/lang/Object;

    move-result-object v1

    .line 408
    :cond_0
    invoke-static {}, Lcom/google/inject/internal/InternalFlags;->getIncludeStackTraceOption()Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v4

    .line 409
    .local v4, "stackTraceOption":Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_2

    .line 412
    :cond_1
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 414
    :cond_2
    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v4, v5, :cond_3

    .line 415
    invoke-direct {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getPartialCallStack([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 417
    :cond_3
    if-nez v1, :cond_5

    .line 419
    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v4, v5, :cond_6

    .line 422
    :cond_4
    iget-object v5, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    invoke-virtual {v5, v0}, Lcom/google/inject/internal/util/SourceProvider;->get([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 429
    .end local v1    # "declaringSource":Ljava/lang/Object;
    :cond_5
    :goto_0
    new-instance v5, Lcom/google/inject/spi/ElementSource;

    iget-object v6, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-direct {v5, v2, v1, v6, v3}, Lcom/google/inject/spi/ElementSource;-><init>(Lcom/google/inject/spi/ElementSource;Ljava/lang/Object;Lcom/google/inject/spi/ModuleSource;[Ljava/lang/StackTraceElement;)V

    return-object v5

    .line 425
    .restart local v1    # "declaringSource":Ljava/lang/Object;
    :cond_6
    iget-object v5, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    iget-object v6, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v6}, Lcom/google/inject/spi/ModuleSource;->getModuleClassNames()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/inject/internal/util/SourceProvider;->getFromClassNames(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private getModuleSource(Lcom/google/inject/Module;)Lcom/google/inject/spi/ModuleSource;
    .locals 3
    .param p1, "module"    # Lcom/google/inject/Module;

    .prologue
    .line 384
    invoke-static {}, Lcom/google/inject/internal/InternalFlags;->getIncludeStackTraceOption()Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v1

    sget-object v2, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v1, v2, :cond_0

    .line 385
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;->getPartialCallStack([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 389
    .local v0, "partialCallStack":[Ljava/lang/StackTraceElement;
    :goto_0
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    if-nez v1, :cond_1

    .line 390
    new-instance v1, Lcom/google/inject/spi/ModuleSource;

    invoke-direct {v1, p1, v0}, Lcom/google/inject/spi/ModuleSource;-><init>(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V

    .line 392
    :goto_1
    return-object v1

    .line 387
    .end local v0    # "partialCallStack":[Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .restart local v0    # "partialCallStack":[Ljava/lang/StackTraceElement;
    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/spi/ModuleSource;->createChild(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)Lcom/google/inject/spi/ModuleSource;

    move-result-object v1

    goto :goto_1
.end method

.method private getPartialCallStack([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 5
    .param p1, "callStack"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "toSkip":I
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    if-eqz v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v3}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v2

    .line 444
    :cond_0
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 446
    .local v0, "chunkSize":I
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    .line 447
    .local v1, "partialCallStack":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    return-object v1
.end method


# virtual methods
.method public addError(Lcom/google/inject/spi/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/google/inject/spi/Message;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/inject/spi/Message;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception was caught and reported. Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v2, Lcom/google/inject/spi/Message;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v3

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/internal/BindingBuilder;

    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/inject/internal/BindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 288
    .local v0, "builder":Lcom/google/inject/internal/BindingBuilder;, "Lcom/google/inject/internal/BindingBuilder<TT;>;"
    return-object v0
.end method

.method public bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/Key;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;

    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/google/inject/spi/TypeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "typeMatcher":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-Lcom/google/inject/TypeLiteral<*>;>;"
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/TypeListenerBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/google/inject/spi/TypeListenerBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/spi/TypeListener;Lcom/google/inject/matcher/Matcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public varargs bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V
    .locals 3
    .param p2, "listeners"    # [Lcom/google/inject/spi/ProvisionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/Binding",
            "<*>;>;[",
            "Lcom/google/inject/spi/ProvisionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "bindingMatcher":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-Lcom/google/inject/Binding<*>;>;"
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/ProvisionListenerBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/ProvisionListenerBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 3
    .param p2, "scope"    # Lcom/google/inject/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/ScopeBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/ScopeBinding;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/inject/Scope;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 3
    .param p2, "converter"    # Lcom/google/inject/spi/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "typeMatcher":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-Lcom/google/inject/TypeLiteral<*>;>;"
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/TypeConverterBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method public currentStage()Lcom/google/inject/Stage;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    return-object v0
.end method

.method public disableCircularProxies()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/DisableCircularProxiesOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/DisableCircularProxiesOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public expose(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    move-result-object v0

    return-object v0
.end method

.method public expose(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    move-result-object v0

    return-object v0
.end method

.method public expose(Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    .line 357
    return-void
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    new-instance v0, Lcom/google/inject/spi/MembersInjectorLookup;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/spi/MembersInjectorLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;)V

    .line 218
    .local v0, "element":Lcom/google/inject/spi/MembersInjectorLookup;, "Lcom/google/inject/spi/MembersInjectorLookup<TT;>;"
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0}, Lcom/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/google/inject/MembersInjector;

    move-result-object v1

    return-object v1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/spi/ProviderLookup;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/spi/ProviderLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 305
    .local v0, "element":Lcom/google/inject/spi/ProviderLookup;, "Lcom/google/inject/spi/ProviderLookup<TT;>;"
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v0}, Lcom/google/inject/spi/ProviderLookup;->getProvider()Lcom/google/inject/Provider;

    move-result-object v1

    return-object v1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public install(Lcom/google/inject/Module;)V
    .locals 4
    .param p1, "module"    # Lcom/google/inject/Module;

    .prologue
    .line 242
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    move-object v0, p0

    .line 245
    .local v0, "binder":Lcom/google/inject/Binder;
    instance-of v3, p1, Lcom/google/inject/internal/ProviderMethodsModule;

    if-nez v3, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->getModuleSource(Lcom/google/inject/Module;)Lcom/google/inject/spi/ModuleSource;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 248
    :cond_0
    instance-of v3, p1, Lcom/google/inject/PrivateModule;

    if-eqz v3, :cond_1

    .line 249
    invoke-interface {v0}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v0

    .line 252
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/inject/Module;->configure(Lcom/google/inject/Binder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    invoke-static {p1}, Lcom/google/inject/internal/ProviderMethodsModule;->forModule(Lcom/google/inject/Module;)Lcom/google/inject/Module;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/inject/Binder;->install(Lcom/google/inject/Module;)V

    .line 263
    instance-of v3, p1, Lcom/google/inject/internal/ProviderMethodsModule;

    if-nez v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v3}, Lcom/google/inject/spi/ModuleSource;->getParent()Lcom/google/inject/spi/ModuleSource;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 267
    .end local v0    # "binder":Lcom/google/inject/Binder;
    :cond_2
    return-void

    .line 253
    .restart local v0    # "binder":Lcom/google/inject/Binder;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v2

    .line 255
    .local v2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/inject/spi/Message;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 256
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public newPrivateBinder()Lcom/google/inject/PrivateBinder;
    .locals 3

    .prologue
    .line 333
    new-instance v1, Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/internal/PrivateElementsImpl;-><init>(Ljava/lang/Object;)V

    .line 334
    .local v1, "privateElements":Lcom/google/inject/internal/PrivateElementsImpl;
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Lcom/google/inject/internal/PrivateElementsImpl;)V

    .line 335
    .local v0, "binder":Lcom/google/inject/spi/Elements$RecordingBinder;
    iget-object v2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-object v0
.end method

.method public requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/InjectionRequest;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/InjectionRequest;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public requestInjection(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 237
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v5, Lcom/google/inject/spi/StaticInjectionRequest;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/inject/spi/StaticInjectionRequest;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public requireAtInjectOnConstructors()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method public requireExactBindingAnnotations()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public requireExplicitBindings()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/RequireExplicitBindingsOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/RequireExplicitBindingsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Class;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/google/inject/PrivateBinder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Class;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public varargs skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;
    .locals 3
    .param p1, "classesToSkip"    # [Ljava/lang/Class;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 329
    .end local p0    # "this":Lcom/google/inject/spi/Elements$RecordingBinder;
    :goto_0
    return-object p0

    .line 328
    .restart local p0    # "this":Lcom/google/inject/spi/Elements$RecordingBinder;
    :cond_0
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    invoke-virtual {v1, p1}, Lcom/google/inject/internal/util/SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/util/SourceProvider;

    move-result-object v0

    .line 329
    .local v0, "newSourceProvider":Lcom/google/inject/internal/util/SourceProvider;
    new-instance v1, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/util/SourceProvider;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    const-string v0, "Binder"

    return-object v0
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/google/inject/spi/Elements$RecordingBinder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/inject/spi/Elements$RecordingBinder;
    :cond_0
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/util/SourceProvider;)V

    move-object p0, v0

    goto :goto_0
.end method
