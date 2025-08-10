.class final Lcom/github/salomonbrys/kodein/LazyKt$WithF$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "lazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/LazyKt;->WithF(Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function0;)Lcom/github/salomonbrys/kodein/CurriedLazyKodeinFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "A",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/LazyKodein;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/github/salomonbrys/kodein/LazyKodein;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke()Lcom/github/salomonbrys/kodein/Kodein;"

    return-object v0
.end method

.method public final invoke()Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/LazyKt$WithF$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/github/salomonbrys/kodein/LazyKodein;

    .line 210
    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/LazyKodein;->invoke()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/LazyKt$WithF$1;->invoke()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method
