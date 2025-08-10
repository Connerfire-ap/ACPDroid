.class final Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TrackerKodeinModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/TrackerKodeinModuleKt;->createTrackerKodeinModule(Landroid/content/Context;)Lcom/github/salomonbrys/kodein/Kodein$Module;
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
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;

    invoke-direct {v0}, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;->INSTANCE:Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/github/salomonbrys/kodein/Kodein$Builder;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1;->invoke(Lcom/github/salomonbrys/kodein/Kodein$Builder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/github/salomonbrys/kodein/Kodein$Builder;)V
    .locals 7
    .param p1, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v3, "$receiver"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p1

    .line 12
    .local v0, "$receiver$iv":Lcom/github/salomonbrys/kodein/Kodein$Builder;
    const/4 v2, 0x0

    .local v2, "tag$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .local v1, "overrides$iv":Ljava/lang/Boolean;
    new-instance v3, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$$special$$inlined$bind$1;

    invoke-direct {v3}, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$$special$$inlined$bind$1;-><init>()V

    check-cast v3, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 13
    invoke-virtual {v0, v3, v2, v1}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v6

    .line 9
    sget-object v3, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;->INSTANCE:Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 15
    new-instance v5, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;

    .line 16
    new-instance v4, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$$special$$inlined$singleton$1;

    invoke-direct {v4}, Lorg/ligi/passandroid/TrackerKodeinModuleKt$createTrackerKodeinModule$1$$special$$inlined$singleton$1;-><init>()V

    check-cast v4, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 15
    invoke-direct {v5, v4, v3}, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v5

    check-cast v3, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .line 9
    invoke-virtual {v6, v3}, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    .line 10
    return-void
.end method
