.class public final Lcom/github/salomonbrys/kodein/RefSingletonBinding;
.super Ljava/lang/Object;
.source "references.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B4\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J)\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\n2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00028\u00000\u001cH\u0016\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\r\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/RefSingletonBinding;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;",
        "createdType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "refMaker",
        "Lcom/github/salomonbrys/kodein/RefMaker;",
        "creator",
        "Lkotlin/Function1;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/RefMaker;Lkotlin/jvm/functions/Function1;)V",
        "_lock",
        "_ref",
        "Lkotlin/Function0;",
        "getCreatedType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getCreator",
        "()Lkotlin/jvm/functions/Function1;",
        "getRefMaker",
        "()Lcom/github/salomonbrys/kodein/RefMaker;",
        "factoryFullName",
        "",
        "factoryName",
        "getInstance",
        "kodein",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "",
        "(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;",
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
.field private final _lock:Ljava/lang/Object;

.field private _ref:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final createdType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final creator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final refMaker:Lcom/github/salomonbrys/kodein/RefMaker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/RefMaker;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "createdType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "refMaker"    # Lcom/github/salomonbrys/kodein/RefMaker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "creator"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Lcom/github/salomonbrys/kodein/RefMaker;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "createdType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refMaker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->creator:Lkotlin/jvm/functions/Function1;

    .line 34
    sget-object v0, Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;->INSTANCE:Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_ref:Lkotlin/jvm/functions/Function0;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_lock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$get_ref$p(Lcom/github/salomonbrys/kodein/RefSingletonBinding;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/RefSingletonBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_ref:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$set_ref$p(Lcom/github/salomonbrys/kodein/RefSingletonBinding;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/RefSingletonBinding;
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 31
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_ref:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refSingleton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

    invoke-static {v1}, Lcom/github/salomonbrys/kodein/TypesKt;->TTOf(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->fullDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public factoryName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refSingleton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

    invoke-static {v1}, Lcom/github/salomonbrys/kodein/TypesKt;->TTOf(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->simpleDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArgType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getArgType(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public final getCreator()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->creator:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getFullDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p3, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;
    .locals 1
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "arg"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;",
            "Lkotlin/Unit;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;
    .locals 8
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "kodein"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "key"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_lock:Ljava/lang/Object;

    .line 82
    .local v2, "lock$iv":Ljava/lang/Object;
    nop

    .line 43
    # getter for: Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_ref:Lkotlin/jvm/functions/Function0;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->access$get_ref$p(Lcom/github/salomonbrys/kodein/RefSingletonBinding;)Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    .local v1, "it$iv":Ljava/lang/Object;
    move-object v0, v1

    .line 96
    .end local v1    # "it$iv":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    monitor-enter v2

    nop

    .line 88
    nop

    .line 43
    :try_start_0
    # getter for: Lcom/github/salomonbrys/kodein/RefSingletonBinding;->_ref:Lkotlin/jvm/functions/Function0;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->access$get_ref$p(Lcom/github/salomonbrys/kodein/RefSingletonBinding;)Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    .restart local v1    # "it$iv":Ljava/lang/Object;
    move-object v4, v1

    .line 87
    .end local v1    # "it$iv":Ljava/lang/Object;
    :goto_1
    monitor-exit v2

    .line 94
    .local v4, "value$iv":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 95
    move-object v0, v4

    .line 43
    .local v0, "it":Ljava/lang/Object;
    goto :goto_0

    .line 90
    .end local v0    # "it":Ljava/lang/Object;
    .end local v4    # "value$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 44
    :try_start_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->getRefMaker()Lcom/github/salomonbrys/kodein/RefMaker;

    move-result-object v7

    new-instance v5, Lcom/github/salomonbrys/kodein/RefSingletonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;

    invoke-direct {v5, p0, p1, v6}, Lcom/github/salomonbrys/kodein/RefSingletonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;-><init>(Lcom/github/salomonbrys/kodein/RefSingletonBinding;Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v5}, Lcom/github/salomonbrys/kodein/RefMaker;->make(Lkotlin/jvm/functions/Function0;)Lkotlin/Pair;

    move-result-object v3

    .line 47
    .local v3, "pair":Lkotlin/Pair;
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v5}, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->access$set_ref$p(Lcom/github/salomonbrys/kodein/RefSingletonBinding;Lkotlin/jvm/functions/Function0;)V

    .line 48
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    nop

    .line 91
    goto :goto_1

    .line 87
    .end local v3    # "pair":Lkotlin/Pair;
    :catchall_0
    move-exception v5

    monitor-exit v2

    throw v5

    .line 96
    .restart local v4    # "value$iv":Ljava/lang/Object;
    :cond_3
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_0
.end method

.method public final getRefMaker()Lcom/github/salomonbrys/kodein/RefMaker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefSingletonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

    return-object v0
.end method
