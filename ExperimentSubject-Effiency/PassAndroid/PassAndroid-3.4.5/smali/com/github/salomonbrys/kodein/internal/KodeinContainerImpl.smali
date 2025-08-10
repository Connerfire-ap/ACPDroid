.class public final Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;
.super Ljava/lang/Object;
.source "KodeinContainerImpl.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/KodeinContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001%B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJB\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\r\"\u0004\u0008\u0000\u0010\u0017\"\u0008\u0008\u0001\u0010\u0018*\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u000c2\u0006\u0010\u001b\u001a\u00020\u001cH\u0003JT\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u001e\"\u0004\u0008\u0000\u0010\u0017\"\u0008\u0008\u0001\u0010\u0018*\u00020\u00192\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\r2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u000c2\u0006\u0010 \u001a\u00020!H\u0002J:\u0010\"\u001a\u0010\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001e\"\u0004\u0008\u0000\u0010\u0017\"\u0008\u0008\u0001\u0010\u0018*\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u000cH\u0016J\"\u0010#\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\r2\u000e\u0010\u001a\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000cH\u0002JB\u0010$\u001a\u0010\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001e\"\u0004\u0008\u0000\u0010\u0017\"\u0008\u0008\u0001\u0010\u0018*\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u000c2\u0006\u0010 \u001a\u00020!H\u0017RJ\u0010\n\u001a>\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\r0\u000bj\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u000f\u001a\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\r0\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R6\u0010\u0013\u001a$\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\r0\u00140\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0012\u00a8\u0006&"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "builder",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;)V",
        "_map",
        "Lcom/github/salomonbrys/kodein/internal/CMap;",
        "_node",
        "Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;",
        "(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V",
        "_cache",
        "Ljava/util/HashMap;",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "Lkotlin/collections/HashMap;",
        "bindings",
        "",
        "getBindings",
        "()Ljava/util/Map;",
        "overriddenBindings",
        "",
        "getOverriddenBindings",
        "_findBindingOrNull",
        "A",
        "T",
        "",
        "key",
        "cache",
        "",
        "_transformBinding",
        "Lkotlin/Function1;",
        "binding",
        "overrideLevel",
        "",
        "factoryOrNull",
        "get",
        "overriddenFactoryOrNull",
        "Node",
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
.field private final _cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final _map:Lcom/github/salomonbrys/kodein/internal/CMap;

.field private final _node:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->getMap$kodein_core_main()Lcom/github/salomonbrys/kodein/internal/CMap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;-><init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V
    .locals 1
    .param p1, "_map"    # Lcom/github/salomonbrys/kodein/internal/CMap;
    .param p2, "_node"    # Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_node:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_cache:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    check-cast v0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;-><init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "_map"    # Lcom/github/salomonbrys/kodein/internal/CMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_node"    # Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;-><init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V

    return-void
.end method

.method private final _findBindingOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;Z)Lcom/github/salomonbrys/kodein/bindings/Binding;
    .locals 6
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;Z)",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->get(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    if-nez v2, :cond_4

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type com.github.salomonbrys.kodein.bindings.Binding<A, T>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v2    # "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_0
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/salomonbrys/kodein/TypeToken;->isGeneric()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    new-instance v3, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v5

    invoke-interface {v5}, Lcom/github/salomonbrys/kodein/TypeToken;->getRaw()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-direct {p0, v3}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->get(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 110
    .restart local v2    # "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    if-eqz p2, :cond_1

    .line 111
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_cache:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    if-nez v2, :cond_4

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type com.github.salomonbrys.kodein.bindings.Binding<A, T>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    .end local v2    # "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_2
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/salomonbrys/kodein/TypeToken;->getSuper()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    .line 117
    .local v0, "argSuperType":Lcom/github/salomonbrys/kodein/TypeToken;
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    :cond_3
    const/4 v2, 0x0

    .line 123
    .end local v0    # "argSuperType":Lcom/github/salomonbrys/kodein/TypeToken;
    :cond_4
    :goto_0
    return-object v2

    .line 120
    .restart local v0    # "argSuperType":Lcom/github/salomonbrys/kodein/TypeToken;
    :cond_5
    new-instance v3, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_findBindingOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;Z)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v1

    .line 121
    .local v1, "found":Lcom/github/salomonbrys/kodein/bindings/Binding;
    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 122
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_cache:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v2, v1

    .line 123
    goto :goto_0
.end method

.method private final _transformBinding(Lcom/github/salomonbrys/kodein/bindings/Binding;Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "binding"    # Lcom/github/salomonbrys/kodein/bindings/Binding;
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p3, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<-TA;TT;>;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;I)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_node:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;->check$kodein_core_main(Lcom/github/salomonbrys/kodein/Kodein$Key;I)V

    .line 128
    :cond_0
    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;-><init>(Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;Lcom/github/salomonbrys/kodein/bindings/Binding;Lcom/github/salomonbrys/kodein/Kodein$Key;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$get_map$p(Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;)Lcom/github/salomonbrys/kodein/internal/CMap;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;

    return-object v0
.end method

.method public static final synthetic access$get_node$p(Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;)Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_node:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    return-object v0
.end method

.method private final get(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lcom/github/salomonbrys/kodein/bindings/Binding;
    .locals 2
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;)",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-virtual {v1, p1}, Lcom/github/salomonbrys/kodein/internal/CMap;->get(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_cache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/Binding;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    goto :goto_0

    .line 89
    .end local v0    # "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public factoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
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
            "<+TA;+TT;>;)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_findBindingOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;Z)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    .local v0, "binding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_transformBinding(Lcom/github/salomonbrys/kodein/bindings/Binding;Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .end local v0    # "binding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :goto_0
    return-object v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/internal/CMap;->getBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOverriddenBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/util/List",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/internal/CMap;->getOverrides()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public nonNullFactory(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
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
            "<+TA;+TT;>;)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->nonNullFactory(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public nonNullProvider(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->nonNullProvider(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public overriddenFactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
    .locals 3
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;I)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-virtual {v1, p1, p2}, Lcom/github/salomonbrys/kodein/internal/CMap;->getOverride(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    .local v0, "binding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.github.salomonbrys.kodein.bindings.Binding<A, T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "binding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    .restart local v0    # "binding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_1
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_transformBinding(Lcom/github/salomonbrys/kodein/bindings/Binding;Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    goto :goto_0
.end method

.method public overriddenNonNullFactory(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;I)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->overriddenNonNullFactory(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public overriddenNonNullProvider(Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;I)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->overriddenNonNullProvider(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public overriddenProviderOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;I)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->overriddenProviderOrNull(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public providerOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->providerOrNull(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
