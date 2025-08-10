.class public final Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;,
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;,
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0003\u001f !B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\'\u0010\u000e\u001a\u00020\r2\u000e\u0010\u000f\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0002\u0010\u0012J9\u0010\u0013\u001a\u000c\u0012\u0004\u0012\u0002H\u00150\u0014R\u00020\u0000\"\u0008\u0008\u0000\u0010\u0015*\u00020\u00012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00162\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0017JK\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u00150\u0018R\u00020\u0000\"\u0004\u0008\u0000\u0010\u0019\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u00150\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003J\u001a\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\""
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "",
        "allowOverride",
        "",
        "silentOverride",
        "map",
        "Lcom/github/salomonbrys/kodein/internal/CMap;",
        "(ZZLcom/github/salomonbrys/kodein/internal/CMap;)V",
        "_overrideMode",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;",
        "getMap$kodein_core_main",
        "()Lcom/github/salomonbrys/kodein/internal/CMap;",
        "_checkMatch",
        "",
        "_checkOverrides",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "overrides",
        "(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V",
        "bind",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;",
        "T",
        "Lcom/github/salomonbrys/kodein/Kodein$Bind;",
        "(Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;",
        "A",
        "(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;",
        "extend",
        "container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "subBuilder",
        "BindBinder",
        "KeyBinder",
        "OverrideMode",
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
.field private final _overrideMode:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

.field private final map:Lcom/github/salomonbrys/kodein/internal/CMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLcom/github/salomonbrys/kodein/internal/CMap;)V
    .locals 1
    .param p1, "allowOverride"    # Z
    .param p2, "silentOverride"    # Z
    .param p3, "map"    # Lcom/github/salomonbrys/kodein/internal/CMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "map"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->map:Lcom/github/salomonbrys/kodein/internal/CMap;

    .line 203
    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->Companion:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;->get(ZZ)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    move-result-object v0

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_overrideMode:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    return-void
.end method

.method private final _checkMatch(Z)V
    .locals 2
    .param p1, "allowOverride"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_overrideMode:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$OverridingException;

    const-string v1, "Overriding has been forbidden"

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/Kodein$OverridingException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 308
    :cond_0
    return-void
.end method

.method private final _checkOverrides(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "overrides"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_overrideMode:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    invoke-virtual {v1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->must(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 218
    .local v0, "mustOverride":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-virtual {v1, p1}, Lcom/github/salomonbrys/kodein/internal/CMap;->contains(Lcom/github/salomonbrys/kodein/Kodein$Key;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$OverridingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must override an existing binding."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/salomonbrys/kodein/Kodein$OverridingException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-virtual {v1, p1}, Lcom/github/salomonbrys/kodein/internal/CMap;->contains(Lcom/github/salomonbrys/kodein/Kodein$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$OverridingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not override an existing binding."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/salomonbrys/kodein/Kodein$OverridingException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 224
    :cond_1
    return-void
.end method

.method public static final synthetic access$_checkOverrides(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrides"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_checkOverrides(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic bind$default(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->bind(Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static bridge synthetic bind$default(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->bind(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static bridge synthetic extend$default(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/KodeinContainer;ZILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 322
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->extend(Lcom/github/salomonbrys/kodein/KodeinContainer;Z)V

    return-void
.end method

.method public static bridge synthetic subBuilder$default(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;ZZILjava/lang/Object;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    move p1, v0

    .line 337
    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->subBuilder(ZZ)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bind(Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
    .locals 1
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrides"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Bind;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final bind(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;
    .locals 1
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrides"    # Ljava/lang/Boolean;
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
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$KeyBinder;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final extend(Lcom/github/salomonbrys/kodein/KodeinContainer;Z)V
    .locals 5
    .param p1, "container"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "allowOverride"    # Z

    .prologue
    const-string v3, "container"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_checkMatch(Z)V

    .line 325
    if-nez p2, :cond_0

    .line 326
    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->getBindings()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 346
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/github/salomonbrys/kodein/Kodein$Key;

    .line 326
    .local v2, "it":Lcom/github/salomonbrys/kodein/Kodein$Key;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_checkOverrides(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 347
    .end local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lcom/github/salomonbrys/kodein/Kodein$Key;
    :cond_0
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->getBindings()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/salomonbrys/kodein/internal/CMap;->putAll(Ljava/util/Map;)V

    .line 329
    return-void
.end method

.method public final getMap$kodein_core_main()Lcom/github/salomonbrys/kodein/internal/CMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->map:Lcom/github/salomonbrys/kodein/internal/CMap;

    return-object v0
.end method

.method public final subBuilder(ZZ)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
    .locals 2
    .param p1, "allowOverride"    # Z
    .param p2, "silentOverride"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->_checkMatch(Z)V

    .line 339
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->map:Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-direct {v0, p1, p2, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;-><init>(ZZLcom/github/salomonbrys/kodein/internal/CMap;)V

    return-object v0
.end method
