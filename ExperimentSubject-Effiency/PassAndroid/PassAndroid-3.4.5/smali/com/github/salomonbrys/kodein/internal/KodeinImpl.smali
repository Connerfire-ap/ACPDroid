.class public Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
.super Ljava/lang/Object;
.source "KodeinImpl.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/Kodein;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0010\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0008\u0013\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B*\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0010\u000cB\u000f\u0008\u0000\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/internal/KodeinImpl;",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "builder",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "runCallbacks",
        "",
        "(Lcom/github/salomonbrys/kodein/Kodein$Builder;Z)V",
        "allowSilentOverride",
        "init",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function1;)V",
        "_container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer;)V",
        "_init",
        "Lkotlin/Function0;",
        "container",
        "getContainer",
        "()Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "container$delegate",
        "Lkotlin/Lazy;",
        "Companion",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;


# instance fields
.field private final _container:Lcom/github/salomonbrys/kodein/KodeinContainer;

.field private volatile _init:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final container$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->Companion:Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "container"

    const-string v5, "getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Z)V
    .locals 4
    .param p1, "builder"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
    .param p2, "runCallbacks"    # Z

    .prologue
    .line 26
    new-instance v2, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;)V

    check-cast v2, Lcom/github/salomonbrys/kodein/KodeinContainer;

    invoke-direct {p0, v2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer;)V

    .line 27
    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;

    invoke-direct {v0, p0, p1}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$init$1;-><init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;Lcom/github/salomonbrys/kodein/Kodein$Builder;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 32
    .local v0, "init":Lkotlin/jvm/functions/Function0;
    if-eqz p2, :cond_0

    .line 33
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .local v1, "lock":Ljava/lang/Object;
    new-instance v2, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;-><init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    iput-object v2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_init:Lkotlin/jvm/functions/Function0;

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "builder"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "runCallbacks"    # Z
    .param p3, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer;)V
    .locals 1
    .param p1, "_container"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "_container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_container:Lcom/github/salomonbrys/kodein/KodeinContainer;

    .line 57
    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;-><init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->container$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ZLkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "allowSilentOverride"    # Z
    .param p2, "init"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Builder;

    new-instance v3, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    new-instance v0, Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/internal/CMap;-><init>()V

    invoke-direct {v3, v4, p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;-><init>(ZZLcom/github/salomonbrys/kodein/internal/CMap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v3, v0, v1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v2, v4}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 48
    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$get_container$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)Lcom/github/salomonbrys/kodein/KodeinContainer;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_container:Lcom/github/salomonbrys/kodein/KodeinContainer;

    return-object v0
.end method

.method public static final synthetic access$get_init$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_init:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$set_init$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_init:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Factory(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->FactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Instance(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public InstanceOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->InstanceOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Provider(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Provider(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public ProviderOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->ProviderOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public final getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->container$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinContainer;

    return-object v0
.end method

.method public getKodein()Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->getKodein(Lcom/github/salomonbrys/kodein/Kodein;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method
