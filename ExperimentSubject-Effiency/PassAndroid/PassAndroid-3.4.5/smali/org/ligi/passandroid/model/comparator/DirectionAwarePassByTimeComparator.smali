.class public final Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;
.super Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;
.source "DirectionAwarePassByTimeComparator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;",
        "Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;",
        "direction",
        "",
        "(I)V",
        "compare",
        "lhs",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "rhs",
        "Companion",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

# The value of this static final field might be set in the static constructor
.field private static final DIRECTION_ASC:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final DIRECTION_DESC:I = -0x1


# instance fields
.field private final direction:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->Companion:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

    .line 12
    const/4 v0, -0x1

    sput v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->DIRECTION_DESC:I

    .line 13
    const/4 v0, 0x1

    sput v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->DIRECTION_ASC:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;-><init>()V

    iput p1, p0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->direction:I

    return-void
.end method

.method public static final synthetic access$getDIRECTION_ASC$cp()I
    .locals 1

    .prologue
    .line 5
    sget v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->DIRECTION_ASC:I

    return v0
.end method

.method public static final synthetic access$getDIRECTION_DESC$cp()I
    .locals 1

    .prologue
    .line 5
    sget v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->DIRECTION_DESC:I

    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lorg/ligi/passandroid/model/pass/Pass;

    check-cast p2, Lorg/ligi/passandroid/model/pass/Pass;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I
    .locals 2
    .param p1, "lhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I

    move-result v0

    iget v1, p0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->direction:I

    mul-int/2addr v0, v1

    return v0
.end method
