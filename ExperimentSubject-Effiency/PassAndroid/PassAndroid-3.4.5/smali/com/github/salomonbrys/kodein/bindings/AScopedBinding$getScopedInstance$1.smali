.class final Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "userScopes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;->getScopedInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
        "\u0000\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0006\u0008\u0001\u0010\u0003 \u0001\"\u0008\u0008\u0002\u0010\u0001*\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "C",
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
.field final synthetic $context:Ljava/lang/Object;

.field final synthetic $kodein:Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;->this$0:Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;->$kodein:Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;->$context:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;->this$0:Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;

    # getter for: Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;->_creator:Lkotlin/jvm/functions/Function2;
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;->access$get_creator$p(Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;->$kodein:Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;->$context:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
