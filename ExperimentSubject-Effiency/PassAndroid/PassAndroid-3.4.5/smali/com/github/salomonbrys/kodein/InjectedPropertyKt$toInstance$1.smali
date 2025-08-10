.class public final Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InjectedProperty.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/InjectedPropertyKt;->toInstance(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
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
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0001*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $arg:Lkotlin/jvm/functions/Function0;

.field final synthetic receiver$0:Lcom/github/salomonbrys/kodein/InjectedProperty;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;->receiver$0:Lcom/github/salomonbrys/kodein/InjectedProperty;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;->$arg:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;->receiver$0:Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/InjectedProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;->$arg:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
