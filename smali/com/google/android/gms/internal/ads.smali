.class public final Lcom/google/android/gms/internal/ads;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static zzcsn:I

.field private static zzcso:I

.field private static zzcsp:I

.field private static zzcsq:I

.field public static final zzcsr:[I

.field public static final zzcss:[J

.field public static final zzcst:[F

.field private static zzcsu:[D

.field public static final zzcsv:[Z

.field public static final zzcsw:[[B

.field public static final zzcsx:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/ads;->zzcsn:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/ads;->zzcso:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/ads;->zzcsp:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/ads;->zzcsq:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcsr:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcss:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcst:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcsu:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcsv:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ads;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcsw:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcsx:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/adg;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/adg;->zzcm(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/adg;->zzLB()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/adg;->zzcm(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/adg;->zzq(II)V

    return v0
.end method
