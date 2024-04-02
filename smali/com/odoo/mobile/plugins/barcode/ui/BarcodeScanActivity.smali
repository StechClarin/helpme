.class public final Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;
.super Lcom/odoo/mobile/core/OdooAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/gms/vision/Detector$Processor;
.implements Lcom/odoo/mobile/core/utils/MatchInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/odoo/mobile/core/OdooAppCompatActivity;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Lcom/google/android/gms/vision/Detector$Processor;",
        "Lcom/odoo/mobile/core/utils/MatchInterface;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$Companion;


# instance fields
.field private cameraPreview:Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;

.field private cameraSource:Lcom/google/android/gms/vision/CameraSource;

.field private matchQueue:Lcom/odoo/mobile/core/utils/MatchQueue;

.field private qrDetector:Lcom/odoo/mobile/plugins/barcode/CropDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->Companion:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$initDetector(Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->initDetector()V

    return-void
.end method

.method private final initDetector()V
    .locals 6

    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.qrScanSurfaceView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;

    iput-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->cameraPreview:Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;

    const-string v1, "cameraPreview"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    new-instance v4, Lcom/odoo/mobile/plugins/barcode/CropDetector;

    const-string v5, "barcodeDetector"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/odoo/mobile/plugins/barcode/CropDetector;-><init>(Lcom/google/android/gms/vision/Detector;)V

    iput-object v4, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->qrDetector:Lcom/odoo/mobile/plugins/barcode/CropDetector;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->cameraPreview:Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->qrDetector:Lcom/odoo/mobile/plugins/barcode/CropDetector;

    const-string v4, "qrDetector"

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->setCropOverlayInterface(Lcom/odoo/mobile/core/utils/CropOverlayInterface;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->qrDetector:Lcom/odoo/mobile/plugins/barcode/CropDetector;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/barcode/CropDetector;->isOperational()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f110123

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->qrDetector:Lcom/odoo/mobile/plugins/barcode/CropDetector;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/vision/Detector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    new-instance v0, Lcom/google/android/gms/vision/CameraSource$Builder;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->qrDetector:Lcom/odoo/mobile/plugins/barcode/CropDetector;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v1

    :goto_0
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setAutoFocusEnabled(Z)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource$Builder;->build()Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    const-string v1, "Builder(this, qrDetector\u2026ocusEnabled(true).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    return-void
.end method

.method private final onBarcodeScanned(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BarcodeScanActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final startCameraPreview()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "cameraSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->cameraPreview:Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;

    if-nez v2, :cond_1

    const-string v2, "cameraPreview"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f090213

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f11010c

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    new-instance p1, Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->hasPermissions([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;

    invoke-direct {v1, p1, p0}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;-><init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->getPermissions(Lcom/odoo/mobile/core/permissions/PermissionStatusListener;[Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lcom/odoo/mobile/core/utils/MatchQueue;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lcom/odoo/mobile/core/utils/MatchQueue;-><init>(ILcom/odoo/mobile/core/utils/MatchInterface;)V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->matchQueue:Lcom/odoo/mobile/core/utils/MatchQueue;

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->initDetector()V

    return-void
.end method

.method public bridge synthetic onMatch(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->onMatch(Ljava/lang/String;)V

    return-void
.end method

.method public onMatch(Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->onBarcodeScanned(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 2

    const-string v0, "detections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->detectorIsOperational()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->matchQueue:Lcom/odoo/mobile/core/utils/MatchQueue;

    if-nez p1, :cond_0

    const-string p1, "matchQueue"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    const-string v1, "items.valueAt(0).displayValue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/utils/MatchQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->startCameraPreview()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-nez p1, :cond_0

    const-string p1, "cameraSource"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    return-void
.end method
