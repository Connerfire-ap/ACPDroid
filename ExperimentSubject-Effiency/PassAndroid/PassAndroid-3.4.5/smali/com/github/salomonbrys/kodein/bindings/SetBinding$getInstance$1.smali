.class final Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "set.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/bindings/SetBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
        "<TT;>;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "it",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;",
        "invoke",
        "(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $kodein:Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

.field final synthetic $subKey:Lcom/github/salomonbrys/kodein/Kodein$Key;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;->$kodein:Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;->$subKey:Lcom/github/salomonbrys/kodein/Kodein$Key;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/Object;
    .locals 2
    .param p1, "it"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;->$kodein:Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;->$subKey:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-interface {p1, v0, v1}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;->invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
