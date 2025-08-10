.class public final Lcom/github/salomonbrys/kodein/RefMultitonBinding;
.super Ljava/lang/Object;
.source "references.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/bindings/Binding",
        "<TA;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004BH\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u001d\u0010\n\u001a\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000b\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J1\u0010\u001c\u001a\u00028\u00012\u0006\u0010\u001d\u001a\u00020\u000c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!R\"\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R(\u0010\n\u001a\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000b\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/RefMultitonBinding;",
        "A",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "argType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "createdType",
        "refMaker",
        "Lcom/github/salomonbrys/kodein/RefMaker;",
        "creator",
        "Lkotlin/Function2;",
        "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/RefMaker;Lkotlin/jvm/functions/Function2;)V",
        "_refs",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lkotlin/Function0;",
        "getArgType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getCreatedType",
        "getCreator",
        "()Lkotlin/jvm/functions/Function2;",
        "getRefMaker",
        "()Lcom/github/salomonbrys/kodein/RefMaker;",
        "factoryFullName",
        "",
        "factoryName",
        "getInstance",
        "kodein",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "arg",
        "(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final _refs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TA;",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final argType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final creator:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "TA;TT;>;"
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
.method public constructor <init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/RefMaker;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "createdType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "refMaker"    # Lcom/github/salomonbrys/kodein/RefMaker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "creator"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Lcom/github/salomonbrys/kodein/RefMaker;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "-TA;+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refMaker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->argType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

    iput-object p4, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->creator:Lkotlin/jvm/functions/Function2;

    .line 65
    invoke-static {}, Lcom/github/salomonbrys/kodein/LangKt;->newConcurrentMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->_refs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$get_refs$p(Lcom/github/salomonbrys/kodein/RefMultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/RefMultitonBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->_refs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refMultiton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

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
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refMultiton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

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
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->argType:Lcom/github/salomonbrys/kodein/TypeToken;

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
    .line 63
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public final getCreator()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->creator:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/Binding$DefaultImpls;->getDescription(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/Binding$DefaultImpls;->getFullDescription(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;TA;)TT;"
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

    .line 71
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->_refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .local v2, "lock$iv":Ljava/util/concurrent/ConcurrentHashMap;
    nop

    .line 72
    # getter for: Lcom/github/salomonbrys/kodein/RefMultitonBinding;->_refs:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->access$get_refs$p(Lcom/github/salomonbrys/kodein/RefMultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function0;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 83
    .local v1, "it$iv":Ljava/lang/Object;
    move-object v0, v1

    .line 96
    .end local v1    # "it$iv":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v4

    .line 72
    goto :goto_0

    .line 87
    :cond_2
    monitor-enter v2

    nop

    .line 88
    nop

    .line 72
    :try_start_0
    # getter for: Lcom/github/salomonbrys/kodein/RefMultitonBinding;->_refs:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->access$get_refs$p(Lcom/github/salomonbrys/kodein/RefMultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function0;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    .restart local v1    # "it$iv":Ljava/lang/Object;
    move-object v4, v1

    .line 87
    .end local v1    # "it$iv":Ljava/lang/Object;
    :goto_3
    monitor-exit v2

    .line 94
    .local v4, "value$iv":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 95
    move-object v0, v4

    .line 72
    .local v0, "it":Ljava/lang/Object;
    goto :goto_1

    .end local v0    # "it":Ljava/lang/Object;
    .end local v4    # "value$iv":Ljava/lang/Object;
    :cond_3
    move-object v1, v4

    goto :goto_2

    .line 90
    :cond_4
    nop

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->getRefMaker()Lcom/github/salomonbrys/kodein/RefMaker;

    move-result-object v7

    new-instance v5, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;

    invoke-direct {v5, p0, p1, p3, v6}, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;-><init>(Lcom/github/salomonbrys/kodein/RefMultitonBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v5}, Lcom/github/salomonbrys/kodein/RefMaker;->make(Lkotlin/jvm/functions/Function0;)Lkotlin/Pair;

    move-result-object v3

    .line 74
    .local v3, "pair":Lkotlin/Pair;
    # getter for: Lcom/github/salomonbrys/kodein/RefMultitonBinding;->_refs:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->access$get_refs$p(Lcom/github/salomonbrys/kodein/RefMultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    nop

    .line 91
    goto :goto_3

    .line 87
    .end local v3    # "pair":Lkotlin/Pair;
    :catchall_0
    move-exception v5

    monitor-exit v2

    throw v5

    .line 96
    .restart local v4    # "value$iv":Ljava/lang/Object;
    :cond_5
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_1
.end method

.method public final getRefMaker()Lcom/github/salomonbrys/kodein/RefMaker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->refMaker:Lcom/github/salomonbrys/kodein/RefMaker;

    return-object v0
.end method
