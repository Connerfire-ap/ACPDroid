.class public interface abstract Lcom/github/salomonbrys/kodein/KodeinInjectedBase;
.super Ljava/lang/Object;
.source "Injected.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/KodeinInjectedBase$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000cH\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinInjectedBase;",
        "",
        "injector",
        "Lcom/github/salomonbrys/kodein/KodeinInjector;",
        "getInjector",
        "()Lcom/github/salomonbrys/kodein/KodeinInjector;",
        "inject",
        "",
        "kodein",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "onInjected",
        "cb",
        "Lkotlin/Function1;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract inject(Lcom/github/salomonbrys/kodein/Kodein;)V
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onInjected(Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lkotlin/jvm/functions/Function1;
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
.end method
