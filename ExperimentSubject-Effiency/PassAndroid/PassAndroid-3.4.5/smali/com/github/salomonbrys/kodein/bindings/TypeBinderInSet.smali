.class public final Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;
.super Ljava/lang/Object;
.source "set.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B\'\u0008\u0000\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0004\u0012\u00028\u00000\u0005R\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u001d\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0006\u0008\u0001\u0012\u00028\u00000\rH\u0087\u0004R\u0018\u0010\u0004\u001a\u000c\u0012\u0004\u0012\u00028\u00000\u0005R\u00020\u0006X\u0088\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;",
        "T",
        "",
        "C",
        "_binder",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;",
        "_colTypeToken",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;Lcom/github/salomonbrys/kodein/TypeToken;)V",
        "with",
        "",
        "binding",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
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
.field private final _binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final _colTypeToken:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;Lcom/github/salomonbrys/kodein/TypeToken;)V
    .locals 1
    .param p1, "_binder"    # Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_colTypeToken"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder",
            "<TT;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "_binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_colTypeToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;->_binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;->_colTypeToken:Lcom/github/salomonbrys/kodein/TypeToken;

    return-void
.end method


# virtual methods
.method public final with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V
    .locals 5
    .param p1, "binding"    # Lcom/github/salomonbrys/kodein/bindings/Binding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<*+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v2, "binding"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    iget-object v3, p0, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;->_colTypeToken:Lcom/github/salomonbrys/kodein/TypeToken;

    iget-object v4, p0, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;->_binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    invoke-virtual {v4}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/salomonbrys/kodein/Kodein$Bind;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/bindings/Binding;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    .line 71
    .local v1, "setKey":Lcom/github/salomonbrys/kodein/Kodein$Key;
    iget-object v2, p0, Lcom/github/salomonbrys/kodein/bindings/TypeBinderInSet;->_binder:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;

    invoke-virtual {v2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$BindBinder;->getBuilder$kodein_core_main()Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;->getMap$kodein_core_main()Lcom/github/salomonbrys/kodein/internal/CMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/salomonbrys/kodein/internal/CMap;->get(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lcom/github/salomonbrys/kodein/bindings/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    .local v0, "setBinding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    instance-of v2, v0, Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;

    if-eqz v2, :cond_1

    .line 75
    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;

    .end local v0    # "setBinding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;->getSet$kodein_core_main()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No set binding to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 73
    .restart local v0    # "setBinding":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is associated to a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/bindings/Binding;->factoryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while it should be associated with bindingSet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method
