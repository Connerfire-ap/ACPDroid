.class final Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassByTimeComparator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lorg/threeten/bp/ZonedDateTime;",
        "Lorg/threeten/bp/ZonedDateTime;",
        "Ljava/lang/Integer;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "leftDate",
        "Lorg/threeten/bp/ZonedDateTime;",
        "rightDate",
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
.field public static final INSTANCE:Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;

    invoke-direct {v0}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;->INSTANCE:Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;)I
    .locals 1
    .param p1, "leftDate"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rightDate"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "leftDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightDate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p2, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .end local p2    # "rightDate":Lorg/threeten/bp/ZonedDateTime;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZonedDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    check-cast p2, Lorg/threeten/bp/ZonedDateTime;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;->invoke(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
