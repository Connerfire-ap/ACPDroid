.class public final Lcom/github/salomonbrys/kodein/KodeinInjected$DefaultImpls;
.super Ljava/lang/Object;
.source "Injected.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinInjected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static inject(Lcom/github/salomonbrys/kodein/KodeinInjected;Lcom/github/salomonbrys/kodein/Kodein;)V
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjected;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/Kodein;

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/github/salomonbrys/kodein/KodeinInjectedBase;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/KodeinInjected;
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinInjectedBase$DefaultImpls;->inject(Lcom/github/salomonbrys/kodein/KodeinInjectedBase;Lcom/github/salomonbrys/kodein/Kodein;)V

    return-void
.end method

.method public static onInjected(Lcom/github/salomonbrys/kodein/KodeinInjected;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjected;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "cb"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinInjected;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/KodeinInjectedBase;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/KodeinInjected;
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinInjectedBase$DefaultImpls;->onInjected(Lcom/github/salomonbrys/kodein/KodeinInjectedBase;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
