.class public final Lcom/github/salomonbrys/kodein/Kodein$Builder;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation runtime Lcom/github/salomonbrys/kodein/Kodein$KodeinDsl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/Kodein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;,
        Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;,
        Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0003123Bz\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001d\u0010\u0004\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t0\u0005\u00121\u0010\n\u001a-\u0012)\u0012\'\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t0\u000b0\u0005\u0012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0010\u000fJA\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u0016\"\u0008\u0008\u0000\u0010\u0017*\u00020\u00012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0002\u0010\u001dJ)\u0010\u001e\u001a\u00060\u001fR\u00020\u00002\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0001\u00a2\u0006\u0002\u0010 J#\u0010!\u001a\u00060\"R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00072\u0008\u0008\u0002\u0010&\u001a\u00020\u001cJ\u0018\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010&\u001a\u00020\u001cJE\u0010*\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010+\"\u0008\u0008\u0001\u0010\u0017*\u00020\u00012\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u0002H+\u0012\u0004\u0012\u0002H\u00170\u000c2\u0017\u0010-\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0007J=\u0010.\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\u0017*\u00020\u00012\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u0002H\u00170\u000c2\u0017\u0010-\u001a\u0013\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tJ\u001f\u00100\u001a\u00020\u00082\u0017\u0010-\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tR?\u0010\n\u001a-\u0012)\u0012\'\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t0\u000b0\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R+\u0010\u0004\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t0\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u00064"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "",
        "container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "_callbacks",
        "",
        "Lkotlin/Function1;",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "_bindingCallbacks",
        "Lkotlin/Pair;",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
        "init",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "get_bindingCallbacks$kodein_core_main",
        "()Ljava/util/List;",
        "get_callbacks$kodein_core_main",
        "getContainer",
        "()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "Bind",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "T",
        "type",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "tag",
        "overrides",
        "",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;",
        "bindDirect",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;",
        "(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;",
        "constant",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;",
        "(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;",
        "extend",
        "kodein",
        "allowOverride",
        "import",
        "module",
        "Lcom/github/salomonbrys/kodein/Kodein$Module;",
        "onFactoryReady",
        "A",
        "key",
        "cb",
        "onProviderReady",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "onReady",
        "ConstantBinder",
        "DirectBinder",
        "TypeBinder",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final _bindingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkotlin/Pair",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final container:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "container"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_callbacks"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "_bindingCallbacks"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "init"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
            "Ljava/util/List",
            "<",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/Unit;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lkotlin/Pair",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lkotlin/Unit;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_bindingCallbacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->container:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_callbacks:Ljava/util/List;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_bindingCallbacks:Ljava/util/List;

    .line 176
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic Bind$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move-object p2, v0

    .line 239
    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method public static bridge synthetic bindDirect$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 249
    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->bindDirect(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static bridge synthetic constant$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->constant(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static bridge synthetic extend$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Lcom/github/salomonbrys/kodein/Kodein;ZILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 287
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->extend(Lcom/github/salomonbrys/kodein/Kodein;Z)V

    return-void
.end method

.method public static bridge synthetic import$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Lcom/github/salomonbrys/kodein/Kodein$Module;ZILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 271
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->import(Lcom/github/salomonbrys/kodein/Kodein$Module;Z)V

    return-void
.end method


# virtual methods
.method public final Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;
    .locals 3
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "overrides"    # Ljava/lang/Boolean;
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
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->container:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v2, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p3}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->bind(Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;)V

    return-object v0
.end method

.method public final bindDirect(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "overrides"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final constant(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrides"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder$ConstantBinder;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final extend(Lcom/github/salomonbrys/kodein/Kodein;Z)V
    .locals 2
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "allowOverride"    # Z

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->container:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->extend(Lcom/github/salomonbrys/kodein/KodeinContainer;Z)V

    return-void
.end method

.method public final getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->container:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    return-object v0
.end method

.method public final get_bindingCallbacks$kodein_core_main()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkotlin/Pair",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_bindingCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public final get_callbacks$kodein_core_main()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_callbacks:Ljava/util/List;

    return-object v0
.end method

.method public final import(Lcom/github/salomonbrys/kodein/Kodein$Module;Z)V
    .locals 5
    .param p1, "module"    # Lcom/github/salomonbrys/kodein/Kodein$Module;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "allowOverride"    # Z

    .prologue
    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Builder;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->container:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Module;->getAllowSilentOverride()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->subBuilder(ZZ)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_callbacks:Ljava/util/List;

    iget-object v3, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_bindingCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Module;->getInit()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/salomonbrys/kodein/Kodein$Builder;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 273
    return-void
.end method

.method public final onFactoryReady(Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "cb"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_bindingCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public final onProviderReady(Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "cb"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Builder$onProviderReady$1;

    invoke-direct {v0, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder$onProviderReady$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->onFactoryReady(Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onReady(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "cb"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/Kodein$Builder;->_callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method
